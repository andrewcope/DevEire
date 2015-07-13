<%@include file="/WEB-INF/evite/common/taglibs.jsp" %>
<%@page import="com.evite.modules.MediaWallModule"%>

<%
int     offset   = 0;
int     rowsize = 2;
String  moduleId = "";

if(request.getParameter("offset") != null)
    offset = Integer.valueOf((String)request.getParameter("offset"));
if(request.getParameter("rowSize") != null)
    rowsize = Integer.valueOf((String)request.getParameter("rowSize"));
if(request.getParameter("moduleId") != null)
    moduleId = request.getParameter("moduleId");


pageContext.setAttribute("offset",offset);
pageContext.setAttribute("rowsize",rowsize);
pageContext.setAttribute("moduleId",moduleId);
pageContext.setAttribute("mediaItems",MediaWallModule.getRecentMedia(offset, rowsize, moduleId));
%>

<c:if test="${fn:length(mediaItems) > 0}">
	<c:forEach var="mediaItem" items="${mediaItems}" varStatus="loop">
	
    	<c:choose>
            <c:when test="${evite:instanceOf(mediaItem, 'com.evite.model.Image')}">
                <c:set var="card_type" value="card-image" />
                <c:set var="data_type_url" value="data-img-url" />
            </c:when>
            <c:otherwise>
                <c:set var="card_type" value="card-video" />
                <c:set var="data_type_url" value="data-video-url" />
            </c:otherwise>
        </c:choose>
        
        <c:choose>
            <c:when test="${(loop.index % 6 == 0)}">
                <c:set var="card_size" value="card-2x1" />
                <c:set var="thumbnail_url" value="${evite:getImageResizeUrl(mediaItem.getThumbnail(),'mediawall-loadcard-2x1')}" />
                <c:set var="mobile_thumbnail_url" value="${evite:getImageResizeUrl(mediaItem.getThumbnail(),'mob-mediawall-loadcard-2x1')}" />
            </c:when>
            <c:when test="${(loop.index > 4) && ((loop.index + 1) % 6 == 0)}">
                <c:set var="card_size" value="card-2x1" />
                <c:set var="thumbnail_url" value="${evite:getImageResizeUrl(mediaItem.getThumbnail(),'mediawall-loadcard-2x1')}" />
                <c:set var="mobile_thumbnail_url" value="${evite:getImageResizeUrl(mediaItem.getThumbnail(),'mob-mediawall-loadcard-2x1')}" />
            </c:when>
            <c:otherwise>
                <c:set var="card_size" value="card-1x1" />   
                <c:set var="thumbnail_url" value="${evite:getImageResizeUrl(mediaItem.getThumbnail(),'mediawall-loadcard-1x1')}" />             
                <c:set var="mobile_thumbnail_url" value="${evite:getImageResizeUrl(mediaItem.getThumbnail(),'mediawall-loadcard-1x1')}" />             
            </c:otherwise>
        </c:choose>
	
             <div class="card ${card_size} ${card_type}">
           
                <a href="#" data-toggle="modal" data-target="#eviteVideoModal" ${data_type_url}="${thumbnail_url}" data-title='${mediaItem.getTitle()}' class="card-wrapper">
                    
                        <img data-src="${thumbnail_url}" data-mobilesrc="${mobile_thumbnail_url}" class="card-img">
                        <c:if test="${mediaItem.getTitle() != null}">
                        <div class="img-overlay">
                            <h3 class="img-title" data-bsp-truncate>${mediaItem.getTitle()}</h3>
                        </div>
                        </c:if>
                </a>
           

        </div>
     
	</c:forEach>
</c:if>
