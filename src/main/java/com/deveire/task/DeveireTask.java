package com.deveire.task;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

import com.psddev.dari.util.*;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.psddev.cms.db.ToolUi;
import com.psddev.dari.db.AsyncDatabaseWriter;
import com.psddev.dari.db.Database;
import com.psddev.dari.db.DistributedLock;
import com.psddev.dari.db.Record;
import com.psddev.dari.db.WriteOperation;

/**
 *
 * @author bkocik
 */
public abstract class DeveireTask extends RepeatingTask {

    public static final int DEFAULT_INTERVAL = 24; // Hours
    protected static final int DEFAULT_LOCK_TIMEOUT = 500; // ms
    private static final Logger LOGGER = LoggerFactory.getLogger(DeveireTask.class);
    protected TaskSettings settings = null;
    protected DistributedLock lock = null;
    private AtomicBoolean forceUpdate;

    public AtomicBoolean getForceUpdate() {
        if (forceUpdate == null) {
            forceUpdate = new AtomicBoolean(false);
        }
        return forceUpdate;
    }

    public boolean tryLock(Database db, int timeout) {
        lock = DistributedLock.Static.getInstance(db, this.getClass().getName());
        try {
            if (lock.tryLock(timeout, TimeUnit.MILLISECONDS)) {
                return true;
            } else {
                lock = null;
                return false;
            }
        } catch (InterruptedException ie) {
            lock = null;
            return false;
        }
    }

    public boolean tryLock(Database db) {
        return tryLock(db, DEFAULT_LOCK_TIMEOUT);
    }

    public void unlock() {
        try {
            saveSettings();
        } finally {
            if (lock != null) {
                try {
                    lock.unlock();
                } catch (Exception e) {
                    LOGGER.error("Exception trying to unlock distributed lock with key {} ", this.getClass().getName(), e);
                }
            }
        }
    }

    /*
     * Checks whether a server running the task is whitelisted and is required to update data.
     */
    public boolean isAllowedToRun() {
        TaskSettings settings = getSettings();
        String allowedHost = settings.getAllowedHost();

        if (!StringUtils.isBlank(allowedHost)) {
            try {
                InetAddress local = InetAddress.getLocalHost();
                InetAddress allowed = InetAddress.getByName(allowedHost);

                if (local.getHostAddress().equals(allowed.getHostAddress())) {
                    return true;
                }
            } catch (UnknownHostException e) {
                // do nothing
            }
        }

        return false;
    }


    // Make the compiler enforce these two methods on subclasses
    @Override
    public abstract void doRepeatingTask(DateTime dateTime) throws Exception;
    public abstract DateTime calculateRunTime(DateTime currentTime);
    public abstract TaskSettings getSettings();
    public abstract void saveSettings();

    public static class TaskSettings extends Record {
        private Date lastRun = null;

        @DisplayName("Allowed hostname")
        @ToolUi.Note("Please omit http:// and trailing /. Leave blank if you do not want the job to run.")
        protected String allowedHost;

        public Date getLastRun() {
            return lastRun;
        }

        public void setLastRun(Date lastRun) {
            this.lastRun = lastRun;
        }

        public String getAllowedHost() {
            return allowedHost;
        }

        public void setAllowedHost(String allowedHost) {
            this.allowedHost = allowedHost;
        }
    }

    protected void batchUpdate(List<Record> records, Database dbase) {
    	if (records.size() > 0) {
        	Database db = dbase == null ? Database.Static.getDefault() : dbase;
        	AsyncQueue<Object> queue = new AsyncQueue<Object>();
            // Create one writer per 250 objects up to 4.
            for(int i = 0;i < Math.min(4, records.size() % 250); i++) {
                AsyncDatabaseWriter<Object> asyncDbWriter = new AsyncDatabaseWriter<Object>("Evite batch update", queue, db, WriteOperation.SAVE, 50, true);
                asyncDbWriter.submit();
            }
            for (Record r : records) {
                queue.add(r);
                try {
                    // 100ms
                    Thread.sleep(100);
                } catch (InterruptedException e) {
                }
            }
            queue.closeAutomatically();
        }
    }

    public void forceUpdate() {
        getForceUpdate().set(true);
    }

    public static final class Static {
        private Static() {
        }

        public static void forceUpdate(Class<? extends DeveireTask> clazz) {
            TaskExecutor defaultExec = TaskExecutor.Static.getDefault();
            for (Object task : defaultExec.getTasks()) {
                if (task.getClass().equals(clazz)) {
                    ((DeveireTask) task).forceUpdate();
                    return;
                }
            }

            throw new IllegalArgumentException("no task with class " + clazz.getClass() + " found");
        }
    }
}
