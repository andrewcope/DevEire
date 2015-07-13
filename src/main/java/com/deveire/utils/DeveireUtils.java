/*
 * Copyright (C) 2013 Perfect Sense Digital.  All Rights Reserved.
 */
package com.deveire.utils;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

import com.deveire.model.Deveire;
import com.psddev.cms.db.ImageTag;
import com.psddev.cms.db.StandardImageSize;
import com.psddev.dari.db.Application;
import com.psddev.dari.db.ReferentialText;
import com.psddev.dari.util.Settings;
import com.psddev.dari.util.StorageItem;
import com.psddev.dari.util.StringUtils;


public class DeveireUtils {
    
    private static final DateTimeFormatter DATE_FORMATTER = ISODateTimeFormat.dateTime();   // TODO: or dateTimeNoMillis()?

    public static Deveire getSiteSettings() {
        return Application.Static.getInstance(Deveire.class);
    }

    /**
     * Checks "production" flag from Settings.
     *
     * @return boolean
     */
    public static final boolean isProduction() {
        return Settings.isProduction();
    }
    
    
    public static String toCamelCase(String s) {   
        
        if (s == null) {
            return null;
        }

        String[] parts = s.split(" ");
        String camelCaseString = "";
        for (String part : parts) {
            String caseStr = toProperCase(part).trim();
            camelCaseString = camelCaseString + ' ' + caseStr;
        }
        //Force first char to be upper case after replacing below
        camelCaseString = camelCaseString.trim();
        camelCaseString = camelCaseString.substring(0, 1).toUpperCase() +  camelCaseString.substring(1);
        return camelCaseString;
    }

    /**
     * Make first letter upper case and subsequent letters lower case
     * 
     * @param s
     * @return converted string
     */
    private static String toProperCase(String s) {
        
        if(s.length()<2)
            return s;
        else 
            return s.substring(0, 1).toUpperCase() + s.substring(1).toLowerCase();
    }
    
    public static String formatDate(Date date) {
        if (date != null) {
            return DATE_FORMATTER.print(new DateTime(date));
        }
        return null;
    }
    
    public static String convertFBDateFormat(String dateInString) {
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ");
        
        if (dateInString != null) {
            
            try {
                
                Date date = formatter.parse(dateInString);
                
                DateFormat df = new SimpleDateFormat("dd MMM yyyy");
                
                String dateOutString = df.format(date);
                
                return dateOutString;
         
            } catch (ParseException e) {
                e.printStackTrace();
            }
            
        }
        return null;
    }
        
    /**
     * Find the StandardImageSize corresponding to the input size name String (in the CMS Settings)
     */
    public static StandardImageSize getStandardImageSizeForName(String imageSizeName) {
        StandardImageSize standardImageSize = null;
        List<StandardImageSize> sizes = StandardImageSize.findAll();

        if (sizes != null) {
            for (StandardImageSize size : sizes) {
                if (StringUtils.equals(size.getInternalName(), imageSizeName)) {
                    standardImageSize = size;
                    break;
                }
            }
        }
        return standardImageSize;
    }
    
    /**
     * Returns a DIMS resize URL given an Image URL string and a StandardImageSize name string.
     */
    public static String getImageResizeUrl(StorageItem item, String imageSizeName) {
        String imageUrl = "";
        if (item != null) {
            StandardImageSize imageSize = getStandardImageSizeForName(imageSizeName);
            if (imageSize != null) {
                imageUrl = new ImageTag.Builder(item).setStandardImageSize(imageSize).toUrl();
            }
        }
        return imageUrl;
    }
    
    /**
     * Returns a DIMS resize URL given an Image URL string and a StandardImageSize
     * name string.
     *
     * @param url
     * @param imageSizeName
     * @return
     */
    public static String getImageResizeUrl(String url, String imageSizeName) {
        String imageUrl = getImageResizeUrlWithProtocol(url, imageSizeName);
        //remove http: from the URL to support http and https
        if (!StringUtils.isEmpty(imageUrl)) {
            if (imageUrl.startsWith("http:")) {
                imageUrl = imageUrl.substring(5);
            } else if (imageUrl.startsWith("https:")) {
                imageUrl = imageUrl.substring(6);
            }
        }
        return imageUrl;
    }

    public static String getImageResizeUrlWithProtocol(String url, String imageSizeName) {
        String imageUrl = "";
        if (url != null && !url.isEmpty()) {
            List<StandardImageSize> sizes = StandardImageSize.findAll();

            if (sizes != null) {
                StandardImageSize size = getStandardImageSize(imageSizeName);

                if (size != null) {
                    StorageItem si = StorageItem.Static.createUrl(url);
                    imageUrl = new ImageTag.Builder(si).setStandardImageSize(size).toUrl();
                }
            }
        }
        return imageUrl;
    }

    /**
     * Helper method to return a CMS StandardImageSize instance, given its
     * internal name String.
     *
     * @param internalSizeName
     * @return
     */
    public static StandardImageSize getStandardImageSize(String internalSizeName) {
        List<StandardImageSize> sizes = StandardImageSize.findAll();
        for (StandardImageSize size : sizes) {
            if (StringUtils.equals(size.getInternalName(), internalSizeName)) {
                return size;
            }
        }
        return null;
    }
    
    /**
     * Returns ReferentialText content as a String, <em>without</em> support for embedded Content object references
     * ("Enhancements").
     * 
     * If the "trim" flag is true, leading/trailing
     * <p>
     * tags are removed.
     * 
     * 
     * @param text
     * @param trim
     * @return
     */
    public static String toString(ReferentialText text, boolean trimParagraphs) {
        if (text == null) {
            return "";
        }

        StringBuilder sb = new StringBuilder();

        for (Object item : text) {
            if (item instanceof String) {
                sb.append(item);
            }
        }
        String textStr = sb.toString();

        if (trimParagraphs) {
            // trim <p> tags
            textStr = textStr.replaceAll("<(/?)p.*?>", "").trim();
        }
        return textStr;
    }
    
    /**
     * Equivalent to java's <b>instanceof</b> operator
     */
    public static boolean instanceOf(Object o, String className) {
        try {
            return Class.forName(className).isInstance(o);
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
