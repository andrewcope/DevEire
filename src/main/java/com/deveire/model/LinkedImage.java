package com.deveire.model;

import com.psddev.cms.db.Content;

public class LinkedImage extends Content {

    private String name;

    private Link link;
    private Image image;
    
    private String classname;
    
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Link getLink() {
		return link;
	}
	public void setLink(Link link) {
		this.link = link;
	}
	public Image getImage() {
		return image;
	}
	public void setImage(Image image) {
		this.image = image;
	}
    
    
   
}
