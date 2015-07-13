package com.deveire.modules;

import java.util.List;

import com.deveire.model.Image;
import com.deveire.model.Link;
import com.deveire.model.LinkedImage;
import com.psddev.cms.db.Content;
import com.psddev.cms.db.Renderer;

@Renderer.Path("/WEB-INF/deveire/common/globalFooter.jsp")
public class Footer extends Content {

    private String name;

    private List<LinkedImage> imagesWithLinks;
    private List<Link> links;
    private String copyright;
    private Image logo;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<LinkedImage> getImagesWithLinks() {
        return imagesWithLinks;
    }

    public void setImagesWithLinks(List<LinkedImage> imagesWithLinks) {
        this.imagesWithLinks = imagesWithLinks;
    }

    public List<Link> getLinks() {
        return links;
    }

    public void setLinks(List<Link> links) {
        this.links = links;
    }

    public String getCopyright() {
        return copyright;
    }

    public void setCopyright(String copyright) {
        this.copyright = copyright;
    }

    public Image getLogo() {
        return logo;
    }

    public void setLogo(Image logo) {
        this.logo = logo;
    }

}
