package com.deveire.model;

import com.deveire.modules.Footer;
import com.deveire.modules.Header;
import com.psddev.cms.db.ToolUi;
import com.psddev.cms.tool.Tool;
import com.psddev.dari.db.Application;

public class Deveire extends Tool {

    private Header header;

    private Footer footer;

    @ToolUi.Tab("Debug")
    private boolean useNonMinifiedCss;

    @ToolUi.Tab("Debug")
    private boolean isUseNonMinifiedJs;

    @ToolUi.Tab("Debug")
    @ToolUi.CodeType("text/css")
    private String additionalCSS;

    @ToolUi.Tab("Debug")
    @ToolUi.CodeType("application/javascript")
    private String additionalJavaScript;

    @ToolUi.Tab("Custom Analytics")
    private String headAnalytics;

    @ToolUi.Tab("Custom Analytics")
    private String bodyStartAnalytics;

    @ToolUi.Tab("Custom Analytics")
    private String bodyEndAnalytics;

    public String getHeadAnalytics() {
        return headAnalytics;
    }

    public void setHeadAnalytics(String headAnalytics) {
        this.headAnalytics = headAnalytics;
    }

    public String getBodyStartAnalytics() {
        return bodyStartAnalytics;
    }

    public void setBodyStartAnalytics(String bodyStartAnalytics) {
        this.bodyStartAnalytics = bodyStartAnalytics;
    }

    public String getBodyEndAnalytics() {
        return bodyEndAnalytics;
    }

    public void setBodyEndAnalytics(String bodyEndAnalytics) {
        this.bodyEndAnalytics = bodyEndAnalytics;
    }

    public Header getHeader() {
        return header;
    }

    public void setHeader(Header header) {
        this.header = header;
    }

    public Footer getFooter() {
        return footer;
    }

    public void setFooter(Footer footer) {
        this.footer = footer;
    }

    public boolean isUseNonMinifiedCss() {
        return useNonMinifiedCss;
    }

    public void setUseNonMinifiedCss(boolean useNonMinifiedCss) {
        this.useNonMinifiedCss = useNonMinifiedCss;
    }

    public boolean isUseNonMinifiedJs() {
        return isUseNonMinifiedJs;
    }

    public void setUseNonMinifiedJs(boolean isUseNonMinifiedJs) {
        this.isUseNonMinifiedJs = isUseNonMinifiedJs;
    }

    public String getAdditionalCSS() {
        return additionalCSS;
    }

    public void setAdditionalCSS(String additionalCSS) {
        this.additionalCSS = additionalCSS;
    }

    public String getAdditionalJavaScript() {
        return additionalJavaScript;
    }

    public void setAdditionalJavaScript(String additionalJavaScript) {
        this.additionalJavaScript = additionalJavaScript;
    }

    public static Deveire getInstance() {
        return Application.Static.getInstance(Deveire.class);
    }

}
