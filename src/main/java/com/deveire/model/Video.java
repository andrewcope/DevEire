/*
 * Copyright (C) 2013 Perfect Sense Digital.  All Rights Reserved.
 */
package com.deveire.model;

import java.util.Date;
import java.util.List;

import com.psddev.cms.db.Content;
import com.psddev.cms.db.Directory;
import com.psddev.cms.db.Renderer;
import com.psddev.cms.db.Site;
import com.psddev.cms.db.ToolUi;
import com.psddev.dari.db.Query;
import com.psddev.dari.db.Recordable;
import com.psddev.dari.db.Recordable.Indexed;
import com.psddev.dari.util.PaginatedResult;
import com.psddev.dari.util.StorageItem;
import com.psddev.dari.util.StringUtils;

@Recordable.LabelFields("title")
@Renderer.EmbedPath("/WEB-INF/deveire/layout/embed.jsp")
@Renderer.EmbedPreviewWidth(352)
@Renderer.Paths({
    @Renderer.Path(value = "/WEB-INF/deveire/module/video-enhancement.jsp")
})
@ToolUi.Referenceable()
public class Video extends Media implements Directory.Item  {

    @ToolUi.Hidden
    private final static String THUMB_PATTERN = "http://img.youtube.com/vi/%s/hqdefault.jpg ";

    @Indexed
    private String title;
    private Long viewCount;
    private Long length;
    @Indexed
    private String youtubeDesc;
    @ToolUi.ReadOnly
    @ToolUi.DisplayName("Preview")
    @ToolUi.InputProcessorPath("/WEB-INF/deveire/_plugins/video/previewVideo.jsp")
    private String previewField;

    @ToolUi.Note("If empty, we default to using the YouTube provided thumbnail.")
    private Image videoThumbnail;
    
    @Indexed(unique = true)
    private String youtubeId;
    
    private Date releaseDate;
    
    private String etag;
    
    @Indexed
    private String url;
    
    private Date published;
    
    @ToolUi.Note("Duration of video in seconds")
    private long duration;

    
	@Indexed
    private String youtubeChannellName;
    
    private String youtubePlayListID;
    
    private List<String> authors;
    private List<String> youtubeCats;
    
    public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Long getViewCount() {
		return viewCount;
	}
	
	public Image getVideoThumbnail() {
		if(videoThumbnail == null)
			videoThumbnail = getYouTubeThumbnail();
		return videoThumbnail;
	}
    public String getThumbnail() {
        if(this.getVideoThumbnail() == null || this.getVideoThumbnail().getFile() == null)
           return null;
        
        return this.getVideoThumbnail().getFile().getPublicUrl();
    }

	public void setVideoThumbnail(Image videoThumbnail) {
		this.videoThumbnail = videoThumbnail;
	}

	public void setViewCount(Long viewCount) {
		this.viewCount = viewCount;
	}

	public Long getLength() {
		return length;
	}

	public void setLength(Long length) {
		this.length = length;
	}

	public String getYoutubeDesc() {
		return youtubeDesc;
	}

	public void setYoutubeDesc(String youtubeDesc) {
		this.youtubeDesc = youtubeDesc;
	}

	public String getPreviewField() {
		return previewField;
	}

	public void setPreviewField(String previewField) {
		this.previewField = previewField;
	}

	public String getYoutubeId() {
		return youtubeId;
	}

	public void setYoutubeId(String youtubeId) {
		this.youtubeId = youtubeId;
	}

	public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public static String getThumbPattern() {
		return THUMB_PATTERN;
	}

	public String getEmbedBaseUrl() {
        return String.format("http://www.youtube.com/embed/%s?wmode=transparent", youtubeId);
    }

    public String getEmbedBaseUrl(boolean autoplay) {
        return String.format("http://www.youtube.com/embed/%s?wmode=transparent&autoplay=%s", youtubeId, autoplay ? "1" : "0");
    }

  
    public String getEtag() {
        return etag;
    }

    public void setEtag(String etag) {
        this.etag = etag;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Date getPublished() {
        return published;
    }

    public void setPublished(Date published) {
        this.published = published;
    }

    public long getDuration() {
        return duration;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }

    public String getYoutubeChannellName() {
        return youtubeChannellName;
    }

    public void setYoutubeChannellName(String youtubeChannellName) {
        this.youtubeChannellName = youtubeChannellName;
    }

    public String getYoutubePlayListID() {
        return youtubePlayListID;
    }

    public void setYoutubePlayListID(String youtubePlayListID) {
        this.youtubePlayListID = youtubePlayListID;
    }

    public List<String> getAuthors() {
        return authors;
    }

    public void setAuthors(List<String> authors) {
        this.authors = authors;
    }

    public List<String> getYoutubeCats() {
        return youtubeCats;
    }

    public void setYoutubeCats(List<String> youtubeCats) {
        this.youtubeCats = youtubeCats;
    }
    
    public Image getYouTubeThumbnail() {
        Image thumb = null;
        if (!StringUtils.isBlank(youtubeId)) {
            thumb = new Image();
            thumb.setAltText("YouTube Video");
            thumb.setFile(StorageItem.Static.createUrl(String.format(THUMB_PATTERN, youtubeId)));
        }
        return thumb;
    }

    public static String getEmbedBaseUrl(String youTubeId, boolean autoplay) {
        return String.format("http://www.youtube.com/embed/%s?wmode=transparent&autoplay=%s", youTubeId, autoplay ? "1" : "0");
    }

    public static Image getYouTubeThumbnail(String youTubeId) {
        Image thumb = null;
        if (!StringUtils.isBlank(youTubeId)) {
            thumb = new Image();
            thumb.setAltText("YouTube Video");
            thumb.setFile(StorageItem.Static.createUrl(String.format(THUMB_PATTERN, youTubeId)));
        }
        return thumb;
    }


    public PaginatedResult<Video> getRecentVideos(int start, int count) {

        Query<Video> query = Query.from(Video.class);
        query.not("youtubeId = ?", this.getYoutubeId());
        query.sortDescending(Content.PUBLISH_DATE_FIELD);
        return query.select(start, count);
    }

    public static Video getVideo(String youtubeId) {

        Video vid = Query.from(Video.class).where("youtubeId = ?", youtubeId).first();
        return vid;
    }


    public String createPermalink(Site site) {
        String newUrl = "/video/" + "/" + StringUtils.toNormalized(this.getTitle()) + "/" + this.getYoutubeId();
        return (newUrl);
    }


}
