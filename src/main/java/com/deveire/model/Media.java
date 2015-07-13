package com.deveire.model;

import com.psddev.cms.db.Content;
import com.psddev.dari.db.Recordable.Indexed;

public abstract class Media extends Content {

    @Indexed
    private boolean includeInMediaWall;
    
	public boolean getIncludeInMediaWall() {
        return includeInMediaWall;
    }

    public void setIncludeInMediaWall(boolean includeInMediaWall) {
        this.includeInMediaWall = includeInMediaWall;
    }
	
	
    public abstract String getTitle();
    public abstract String getThumbnail();
    public abstract String getYoutubeId();

}
