package com.deveire.model;

import com.psddev.cms.db.Content;
import com.psddev.dari.db.Recordable.Indexed;

public abstract class Media extends Content {

    public abstract String getTitle();
    public abstract String getThumbnail();
    public abstract String getYoutubeId();

}
