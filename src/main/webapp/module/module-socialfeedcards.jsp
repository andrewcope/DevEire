<%@include file="/WEB-INF/evite/common/taglibs.jsp" %>
<%@page import="com.evite.utils.EviteUtils"%>
<!-- Social News Feed Tiles -->

<jsp:useBean id="socialContentList" class="com.evite.social.SocialContentList" />

<c:set var="style" value="${(param.offset == 0) ? '' : 'disabled'}" />

<ul class="social-wrap" data-load-more-dest>
    <c:forEach var="socialContent" items="${socialContentList.getSocialContentListFromFeed(param.offset,param.pagesize,param.moduleId)}">

        <%-- INSTAGRAM --%>
        <c:if test="${socialContent.type.toString() == 'InstagramMedia'}">
            <li class="${style} card-social card-instagram card-small" data-social-item="instagram" data-load-more-item>
                <div class="card-inner">
                    <div class="card-thumb">
                        <a class="link" href="${socialContent.url}">
                            <cms:img  class="card-thumbnail" src="${socialContent.image.publicUrl}" size="instagram-web-88x88"/>
                        </a>
                    </div>
                    <div class="card-content">
                        <div class="card-text">
                            <cms:img src="${socialContent.attributes.userPicture}" class="card-icon" size="instagram-33x33"/>                          
                            <p data-bsp-truncate data-bsp-truncate-options='{"maxLines":3}'>${socialContent.attributes.caption}</p>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="${socialContent.attributes.link}" class="icon icon-date"><span>${evite:convertInstagramDateFormat(socialContent.attributes.createdDate)}</span></a>                              
                        <a href="${socialContent.attributes.link}" class="icon icon-heart"><span>${socialContent.attributes.likeCount}</span></a>           
                        <a href="${socialContent.attributes.link}" class="icon icon-comment"><span>${socialContent.attributes.commentCount}</span></a>                         
                               
                    </div>
                    <%-- <div class="social-actions">
                         <a href="${socialContent.url}" target="_blank" class="item-icon"><i class="fa fa-instagram"></i></a>
                     </div>--%>
                </div>
            </li>
        </c:if>

        <%-- TUMBLR --%>
        <c:if test="${socialContent.type.toString() == 'TumblrPhotoPost'}">
            <li class="${style} social-item tumblr ${empty socialContent.image.publicUrl ? 'no-image': ''}" data-social-item="tumblr" data-load-more-item>
                <div class="item-inner">
                    <a class="link" href="${socialContent.url}"><cms:img class="social-thumbnail" src="${socialContent.image.publicUrl}" size="tumblr-web-thumb"/></a>
                    <div class="social-actions">
                        <a href="${socialContent.url}" target="_blank" class="item-icon"><i class="fa fa-tumblr"></i></a>
                            <%-- <div class="item-share">
                                <a href="${socialContent.attributes.reblog}"><i class="fa fa-retweet"></i></a>
                                <span><i class="fa fa-heart"></i></span>
                            </div> --%>
                    </div>
                </div>
            </li>
        </c:if>

        <%-- TWITTER --%>
        <c:if test="${socialContent.type.toString() == 'Tweet'}">
            <li class="${style} card-social card-twitter ${empty socialContent.image.publicUrl ? 'card-small': ''}" data-social-item="tweet" style="background-image: url(${socialContent.image.url});" data-load-more-item>
                <div class="card-inner">
                    <div class="card-thumb"><a href="#">
                            <img src="" class="card-thumbnail">
                        </a>
                    </div>
                    <div class="card-content">
                        <div class="card-text">
                            <img src="/assets/images/tweet-social.png" class="card-icon">  
                            <p data-bsp-truncate data-bsp-truncate-options='{"maxLines":3}'><a href="${socialContent.url}" class="handle">@Evite</a>
                                <c:out value="${socialContent.truncateContentLength()}"/></p>                      
                        </div>
                    </div>
                    <div class="card-footer">                            

                        <%--<a href="${socialContent.attributes.reply}" target="_blank"><i class="fa fa-reply"></i></a>-->
                        <a href="${socialContent.url}" target="_blank" class="item-icon"><i class="fa fa-twitter"></i></a>--%>
                        <a href="#" class="icon icon-date"><span></span></a>         
                        <a href="${socialContent.attributes.favorite}" class="icon icon-heart"><span></span></a>                                    
                        <a href="${socialContent.attributes.retweet}" class="icon icon-retweet"><span></span></a>
                    </div>
                </div>
            </li>
        </c:if>

        <%-- FACEBOOK --%>
        <c:if test="${socialContent.type.toString() == 'FacebookPost'}">

            <li class="${style} card-social card-facebook ${empty socialContent.image.publicUrl ? 'card-small': ''}" data-social-item="facebook" data-load-more-item>
                <div class="card-inner">
                    <div class="card-thumb">
                        <a href="${socialContent.url}"><cms:img class="card-thumbnail" src="${socialContent.image.publicUrl}" size="fb-web-thumb" /></a>
                    </div>
                    <div class="card-content">
                        <div class="card-header">
                            <img src="/assets/images/fb-social.png" class="card-icon">
                            <h4>Evite 2BE Celebration</h4>
                        </div>
                        <div class="card-text">
                            <p data-bsp-truncate data-bsp-truncate-options='{"maxLines":6}'><c:out value="${socialContent.truncateContentLength()}" /></p>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="icon icon-date"><span>${evite:convertFBDateFormat(socialContent.attributes.createdDate)}</span></a>                              
                        <a href="${socialContent.url}" class="icon icon-heart"><span>${socialContent.attributes.likeCount}</span></a>                                    
                        <a href="${socialContent.attributes.facebookLike}" class="icon icon-comment"><span>${socialContent.attributes.commentCount}</span></a>                                

                    </div>
                </div>
            </li>
        </c:if>

        <%-- GOOGLE PLUS --%>
        <c:if test="${socialContent.type.toString() == 'GooglePlusActivity'}">
            <li class="${style} social-item googleplus ${empty socialContent.image.publicUrl ? 'no-image': ''}" data-social-item="googleplus" data-load-more-item>
                <div class="item-inner">
                    <div class="social-thumb">
                        <a href="${socialContent.url}"><cms:img class="social-thumbnail" src="${socialContent.image.publicUrl}" size="googleplus-web-thumb" /></a>
                    </div>
                    <div class="social-text">
                        <span><c:out value="${socialContent.truncateContentLength()}" /></span>
                    </div>
                    <div class="social-actions">
                        <a href="${socialContent.url}" target="_blank" class="item-icon"><i class="fa fa-google-plus-square"></i></a>
                    </div>
                </div>
            </li>
        </c:if>

        <%-- PINTEREST --%>
        <c:if test="${socialContent.type.toString() == 'Pin'}">
            <li class="${style} social-item pinterest ${empty socialContent.image.publicUrl ? 'no-image': ''}" data-social-item="pinterest" data-load-more-item>
                <div class="item-inner">
                    <div class="social-thumb">
                        <a href="${socialContent.url}"><cms:img class="social-thumbail" src="${socialContent.image.publicUrl}" size="pinterest-web-thumb" /></a>
                    </div>
                    <div class="social-text">
                        <span><c:out value="${socialContent.truncateContentLength()}" /></span>
                    </div>
                    <div class="social-actions">
                        <a href="${socialContent.url}" target="_blank" class="item-icon"><i class="fa fa-pinterest-square"></i></a>
                    </div>
                </div>
            </li>
        </c:if>

        <%-- RSS --%>
        <c:if test="${socialContent.type.toString() == 'RssItem'}">
            <li class="${style} social-item rss ${empty socialContent.image.publicUrl ? 'no-image': ''}" data-social-item="rss" data-load-more-item>
                <div class="item-inner">
                    <div class="social-thumb">
                        <a href="${socialContent.url}"><cms:img class="social-thumbail" src="${socialContent.image.publicUrl}" size="rss-web-thumb" /></a>
                    </div>
                    <div class="social-text">
                        <span><c:out value="${socialContent.truncateContentLength()}" /></span>
                    </div>
                    <div class="social-actions">
                        <a href="${socialContent.url}" target="_blank" class="item-icon"><i class="fa fa-rss"></i></a>
                    </div>
                </div>
            </li>
        </c:if>

        <%-- YOUTUBE --%>
        <c:if test="${socialContent.type.toString() == 'YouTubeVideo'}">
            <li class="${style} social-item youtube ${empty socialContent.image.publicUrl ? 'no-image': ''}" data-social-item="youtube" data-load-more-item>
                <div class="item-inner">
                    <div class="social-thumb">
                        <a href="${socialContent.url}"><cms:img class="social-thumbail" src="${socialContent.image.publicUrl}" size="youtube-web-thumb" /></a>
                    </div>
                    <div class="social-text">
                        <span><c:out value="${socialContent.truncateContentLength()}" /></span>
                    </div>
                    <div class="social-actions">
                        <a href="${socialContent.url}" target="_blank" class="item-icon"><i class="fa fa-comment"></i></a>
                    </div>
                </div>
            </li>
        </c:if>

    </c:forEach>
</ul>
