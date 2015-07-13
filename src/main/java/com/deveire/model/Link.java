package com.deveire.model;

import com.psddev.cms.db.Content;
import com.psddev.cms.db.Site;
import com.psddev.cms.db.ToolUi;
import com.psddev.dari.util.ObjectUtils;
import com.psddev.dari.util.StringUtils;

@Content.Embedded
public abstract class Link extends Content {

    @DisplayName("Link Text")
    private String text;

    public String getLabel() {
        return getText();
    }

    public String getText() {
        if (StringUtils.isBlank(text)) {
            if (this instanceof InternalLink && !ObjectUtils.isBlank(((InternalLink) this).getContent())) {
                return ((InternalLink) this).getContent().getLabel();
            } else if (this instanceof ExternalLink) {
                return ((ExternalLink) this).getUrl();
            }
        }
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public abstract String getUrl();

    public enum Target {

        _blank("New Window");
        private String value;

        private Target(String pValue) {
            value = pValue;
        }

        public String toString() {
            return value;
        }
    }
    protected Target target;

    public Target getTarget() {
        return target;
    }

    public void setTarget(Target target) {
        this.target = target;
    }
    /**
     * A link to an internal piece of content
     */
    @Embedded
    public static class InternalLink extends Link {

        @Required
        @ToolUi.OnlyPathed
        private Content content;

        public Content getContent() {
            return content;
        }

        public void setContent(Content content) {
            this.content = content;
        }

        public String getUrl() {
            return content.getPermalink();
        }
    }

    /**
     * A hyperlink to an external website.
     */
    @Embedded
    public static class ExternalLink extends Link {

        @Required
        private String url;

        @Override
        public String getUrl() {
            if (StringUtils.isBlank(url)) {
                return "";
            }
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        @Override
        public void beforeSave() {
            //having trouble with editors saving extra spaces around the url
            if (!StringUtils.isBlank(url)) {
                url = url.trim();
                if (!StringUtils.isBlank(url) && url.startsWith("//")) {
                    url = "http:" + url;
                } else if (!StringUtils.isBlank(url) && !url.startsWith("http")) {
                    url = "http://" + url;
                }
            }
        }
    }
}
