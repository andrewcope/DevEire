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
@Renderer.Path("/WEB-INF/pages/team.jsp")
public class TeamPage extends Content
{
    private String title;
    private Image backgroundImage;
    private String subTitle;
    private List<ArticleWithImageModule> articles;
    private List<TeamMember> team;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Image getBackgroundImage() {
        return backgroundImage;
    }

    public void setBackgroundImage(Image backgroundImage) {
        this.backgroundImage = backgroundImage;
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

    public List<TeamMember> getTeam() {
        return team;
    }

    public void setTeam(List<TeamMember> team) {
        this.team = team;
    }

    @Embedded
    public static class TeamMember extends Content
    {
        private String title;
        private Shape shape;
        private String name;
        private String position;
        private Image headshot;
        private ReferentialText aboutTheRole;
        private ReferentialText aboutTeamMember;
        private ReferentialText overviewOfProjects;
        private List<String> listOfProjectsWorkedOn;

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public Shape getShape() {
            return shape;
        }

        public void setShape(Shape shape) {
            this.shape = shape;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getPosition() {
            return position;
        }

        public void setPosition(String position) {
            this.position = position;
        }

        public Image getHeadshot() {
            return headshot;
        }

        public void setHeadshot(Image headshot) {
            this.headshot = headshot;
        }

        public ReferentialText getAboutTheRole() {
            return aboutTheRole;
        }

        public void setAboutTheRole(ReferentialText aboutTheRole) {
            this.aboutTheRole = aboutTheRole;
        }

        public ReferentialText getAboutTeamMember() {
            return aboutTeamMember;
        }

        public void setAboutTeamMember(ReferentialText aboutTeamMember) {
            this.aboutTeamMember = aboutTeamMember;
        }

        public ReferentialText getOverviewOfProjects() {
            return overviewOfProjects;
        }

        public void setOverviewOfProjects(ReferentialText overviewOfProjects) {
            this.overviewOfProjects = overviewOfProjects;
        }

        public List<String> getListOfProjectsWorkedOn() {
            return listOfProjectsWorkedOn;
        }

        public void setListOfProjectsWorkedOn(List<String> listOfProjectsWorkedOn) {
            this.listOfProjectsWorkedOn = listOfProjectsWorkedOn;
        }

        @Embedded
        public enum Shape
        {
            CIRCLE, SQUARE;
        }

    }

}
