package com.deveire.modules;

import com.deveire.model.Image;
import com.deveire.model.Link;
import com.psddev.cms.db.Content;
import com.psddev.cms.db.Renderer;
import com.psddev.dari.db.ReferentialText;

import java.util.List;

/**
 * Created by copea1 on 7/13/15.
 */
@Renderer.Path("/WEB-INF/module/home-dl.jsp")
public class ImageLead extends Content {

    private String title;
    private Image image;
    private InfoLink infoLink;


    public InfoLink getInfoLink() {
        return infoLink;
    }

    public void setInfoLink(InfoLink infoLink) {
        this.infoLink = infoLink;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Embedded
    public static class InfoLink extends Content{

        private Image logo;
        private String title;
        private String blurb;
        private Link link;

        public Image getLogo() {
            return logo;
        }

        public void setLogo(Image logo) {
            this.logo = logo;
        }

        public String getBlurb() {
            return blurb;
        }

        public void setBlurb(String blurb) {
            this.blurb = blurb;
        }

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public Link getLink() {
            return link;
        }

        public void setLink(Link link) {
            this.link = link;
        }
    }
}
