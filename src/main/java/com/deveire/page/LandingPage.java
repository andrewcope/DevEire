package com.deveire.page;

import com.deveire.modules.ArticleWithImageModule;
import com.deveire.modules.ImageLead;
import com.psddev.cms.db.Content;
import com.psddev.cms.db.Renderer;

import java.util.List;

/**
 * Created by copea1 on 7/13/15.
 */
@Renderer.Path("/WEB-INF/pages/landing.jsp")
public class LandingPage extends Content {
    private String title;
    private ImageLead imageLead;
    private String subTitle;
    private List<ArticleWithImageModule> articles;

    public ImageLead getImageLead() {
        return imageLead;
    }

    public void setImageLead(ImageLead imageLead) {
        this.imageLead = imageLead;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<ArticleWithImageModule> getArticles() {
        return articles;
    }

    public void setArticles(List<ArticleWithImageModule> articles) {
        this.articles = articles;
    }

    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }
}
