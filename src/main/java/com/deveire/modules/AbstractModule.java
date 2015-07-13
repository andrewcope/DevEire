package com.deveire.modules;

import com.deveire.modules.Module;
import com.psddev.cms.db.Content;
import com.psddev.cms.db.PageStage;
import com.psddev.cms.db.Renderer;
import com.psddev.cms.db.ToolUi;


@Renderer.LayoutPath("/WEB-INF/renderer/layout/default.jsp")
public abstract class AbstractModule extends Content implements Module {
    
    
    @ToolUi.Note("An unique internal name used for search and display within the CMS. It will never be shown to users.")
    @Required
    @Indexed(unique = true)
    private String internalName;
    
    private String subTitle;

    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }

    public void setInternalName(String internalName) {
        this.internalName = internalName;
    }

    public String getInternalName() {
        return internalName;
    }
}
