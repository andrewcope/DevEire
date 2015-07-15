package com.deveire.page;

import com.deveire.model.Image;
import com.deveire.modules.ArticleWithImageModule;
import com.psddev.cms.db.Content;
import com.psddev.cms.db.Renderer;
import com.psddev.dari.db.ReferentialText;

import java.util.List;

/**
 * Created by copea1 on 7/15/15.
 */
@Renderer.Path("/WEB-INF/pages/clients.jsp")
public class ClientsPage extends Content
{
    private String title;
    private String subTitle;
    private List<ArticleWithImageModule> articles;
    private List<ClientsModule> clients;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }

    public List<ArticleWithImageModule> getArticles() {
        return articles;
    }

    public void setArticles(List<ArticleWithImageModule> articles) {
        this.articles = articles;
    }

    public List<ClientsModule> getClients() {
        return clients;
    }

    public void setClients(List<ClientsModule> clients) {
        this.clients = clients;
    }

    @Embedded
    public static class ClientsModule extends Content
    {
        private String title;
        private Image clientLogo;
        private String aboutClientTitle;
        private ReferentialText aboutClientBlurb;
        private String whatWeDidTitle;
        private ReferentialText whatWeDidBlurb;

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public Image getClientLogo() {
            return clientLogo;
        }

        public void setClientLogo(Image clientLogo) {
            this.clientLogo = clientLogo;
        }

        public String getAboutClientTitle() {
            return aboutClientTitle;
        }

        public void setAboutClientTitle(String aboutClientTitle) {
            this.aboutClientTitle = aboutClientTitle;
        }

        public ReferentialText getAboutClientBlurb() {
            return aboutClientBlurb;
        }

        public void setAboutClientBlurb(ReferentialText aboutClientBlurb) {
            this.aboutClientBlurb = aboutClientBlurb;
        }

        public String getWhatWeDidTitle() {
            return whatWeDidTitle;
        }

        public void setWhatWeDidTitle(String whatWeDidTitle) {
            this.whatWeDidTitle = whatWeDidTitle;
        }

        public ReferentialText getWhatWeDidBlurb() {
            return whatWeDidBlurb;
        }

        public void setWhatWeDidBlurb(ReferentialText whatWeDidBlurb) {
            this.whatWeDidBlurb = whatWeDidBlurb;
        }
    }
}
