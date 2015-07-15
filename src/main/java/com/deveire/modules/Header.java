package com.deveire.modules;

import java.util.List;

import com.deveire.model.Image;
import com.deveire.model.Link;
import com.deveire.model.LinkedImage;
import com.psddev.cms.db.Content;
import com.psddev.cms.db.Renderer;
import com.psddev.dari.db.Recordable.Embedded;

@Renderer.Path("/WEB-INF/common/global-header.jsp")
public class Header extends Content {

    private String name;
    private List<HeaderItem> headerItems;
    private Image logo;
    private Link logoLink;

    public Image getLogo() {
        return logo;
    }

    public void setLogo(Image logo) {
        this.logo = logo;
    }

    public List<HeaderItem> getHeaderItems() {
        return headerItems;
    }

    public void setHeaderItems(List<HeaderItem> headerItems) {
        this.headerItems = headerItems;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Link getLogoLink() {
        return logoLink;
    }

    public void setLogoLink(Link logoLink) {
        this.logoLink = logoLink;
    }

    @Embedded
    public static class HeaderItem extends Content {
        
        private String label;
        
        private Link link;
        
        private AbstractModule module;
        
        public String getLabel() {
            return label;
        }
        public void setLabel(String label) {
            this.label = label;
        }
        public Link getLink() {
            return link;
        }
        public void setLink(Link link) {
            this.link = link;
        }
        public AbstractModule getModule() {
            return module;
        }
        public void setModule(AbstractModule module) {
            this.module = module;
        }
        
    }

}
