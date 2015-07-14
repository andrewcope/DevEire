package com.deveire.modules;

import com.deveire.model.Image;
import com.psddev.cms.db.Content;
import com.psddev.cms.db.ToolUi;
import com.psddev.dari.db.ReferentialText;

/**
 * Created by copea1 on 7/13/15.
 */
public class ArticleWithImageModule extends Content {

    private String title;
    private boolean displayTextAsBlockQuote;
    private ReferentialText ArticleText;
    @ToolUi.Note("Image optional")
    private Image image;
    @ToolUi.Note("Image will default to the right of the artical")
    private boolean imageToLeft;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public boolean isDisplayTextAsBlockQuote() {
        return displayTextAsBlockQuote;
    }

    public void setDisplayTextAsBlockQuote(boolean displayTextAsBlockQuote) {
        this.displayTextAsBlockQuote = displayTextAsBlockQuote;
    }

    public ReferentialText getArticleText() {
        return ArticleText;
    }

    public void setArticleText(ReferentialText articleText) {
        ArticleText = articleText;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }

    public boolean isImageToLeft() {
        return imageToLeft;
    }

    public void setImageToLeft(boolean imageToLeft) {
        this.imageToLeft = imageToLeft;
    }
}
