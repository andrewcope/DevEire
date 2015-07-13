/*
 * Copyright (C) 2013 Perfect Sense Digital.  All Rights Reserved.
 */
package com.deveire.model;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.psddev.cms.db.Content;
import com.psddev.dari.db.Query;
import com.psddev.dari.db.Recordable;
import com.psddev.dari.util.ObjectUtils;
import com.psddev.dari.util.StringUtils;

public class Signups extends Content {

    private final static Logger LOGGER = LoggerFactory.getLogger(Signups.class);

    @Recordable.Indexed
    private String email;

    private Date submitted;
    private String ipAddress;

    /**
     * @return the submitted
     */
    public Date getSubmitted() {
        return submitted;
    }

    /**
     * @param submitted the submitted to set
     */
    public void setSubmitted(Date submitted) {
        this.submitted = submitted;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public static Signups getFromId(String id) {
        return Query.findById(Signups.class, UUID.fromString(id));
    }

    /**
     * Creates a new Signup object using parameters on the request or errors if
     * there is an issue
     *
     * @param request
     * @return
     */
    public static String fromRequest(HttpServletRequest request) {
        Content asset = null;
        UUID assetUUID = null;
        Map<String, Object> responseMap = new LinkedHashMap<String, Object>();
        responseMap.put("success", "false");

        // Grab ip address
        String ipAddress = request.getHeader("X-FORWARDED-FOR");
        if (ipAddress == null) {
            ipAddress = request.getRemoteAddr();
        }
       
        String email = request.getParameter("email");
        if(!StringUtils.isBlank(email)) {
	        Query<Signups> query = Query.from(Signups.class)
	                .where("email = ?", email);
	       
	        Signups signups = query.first();
	        if (signups == null) {
	            signups = new Signups();
	            signups.setEmail(email);
	            signups.setIpAddress(ipAddress);
	            signups.setSubmitted(new Date());
	            signups.save();
	        }
	
	        responseMap.put("success", "true");
        }
        return ObjectUtils.toJson(responseMap);
    }

    public static boolean deleteSignup(String email) {

        List<Signups> signedUsers = Query.from(Signups.class)
                .where("email = ?", email).selectAll();
        if (signedUsers != null &&  signedUsers.size()>0) {
            try {
                for (Signups user : signedUsers) {
                    user.delete();
                }
                return true;
            } catch (Exception e) {
                return false;
            }
        }
        return false;

    }
}
