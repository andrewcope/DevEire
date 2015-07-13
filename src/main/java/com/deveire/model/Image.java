package com.deveire.model;

import java.io.File;

import com.psddev.cms.db.Content;
import com.psddev.cms.db.Renderer;
import com.psddev.cms.db.ToolUi;
import com.psddev.dari.db.Recordable;
import com.psddev.dari.db.Reference;
import com.psddev.dari.db.Recordable.Indexed;
import com.psddev.dari.util.LocalStorageItem;
import com.psddev.dari.util.StorageItem;
import com.psddev.dari.util.StringUtils;

@Recordable.PreviewField("file")
@Renderer.EmbedPath("/WEB-INF/deveire/layout/embed.jsp")
@Renderer.EmbedPreviewWidth(352)
@Renderer.Path(value = "/WEB-INF/deveire/module/image-enhancement.jsp")
@ToolUi.Referenceable(via = Image.EnhancementData.class)
public class Image extends Media {

    @Indexed
    private String title;

    @Indexed
    private String altText;

    @Indexed
    @ToolUi.RichText
    private String caption;

    @Required
    private StorageItem file;

    private Link imageLink;
    
    public Link getImageLink() {
		return imageLink;
	}

	public void setImageLink(Link imageLink) {
		this.imageLink = imageLink;
	}

	public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    public StorageItem getFile() {
        return file;
    }

    public void setFile(StorageItem file) {
        this.file = file;
    }

    public String getThumbnail() {
        if (this.getFile() == null)
        {
            return null;
        }
        return this.getFile().getPublicUrl();
    }
    
	/**
     * @return Published <code>altText</code> field or if empty the <code>title</code> field.
     */
    public String getAltText() {
        if (altText != null && altText.contains("<")) {
            altText = StringUtils.stripHtml(altText).trim();
        }
        return altText;
    }

    public void setAltText(String altText) {
        this.altText = StringUtils.stripHtml(altText).trim();
    }

    @Override
    protected void beforeDelete() {
        if (file instanceof LocalStorageItem) {
            deleteImageStorage((LocalStorageItem) file);
        }
    }

    //Delete the item off of storage when the image object is deleted
    private void deleteImageStorage(LocalStorageItem item) {
        new File(item.getRootPath() + "/" + item.getPath()).delete();
    }

    public void beforeSave() {
        if (title != null) {
            title = StringUtils.stripHtml(title).trim();
        }
        if (altText != null) {
            altText = StringUtils.stripHtml(altText).trim();
        }
    }

    @DisplayName("Image Overrides")
    public static class EnhancementData extends Reference {

        @ToolUi.RichText
        private String captionOverride;

        private Link link;

        public String getCaption() {
            if (StringUtils.isBlank(captionOverride)) {
                return ((Image) this.getObject()).getCaption();
            }
            return captionOverride;
        }

        public Link getLink() {
            return link;
        }
    }
    
    public String getYoutubeId() {
        return "";
    }

}
