<%@ page import="com.deveire.utils.DeveireUtils" %>

<%
    pageContext.setAttribute("gHeader", DeveireUtils.getSiteSettings().getHeader());
    pageContext.setAttribute("gFooter", DeveireUtils.getSiteSettings().getFooter());
%>

<%@include file="/WEB-INF/common/taglibs.jsp"%>
<%-- Global start --%>
<jsp:include page="/WEB-INF/common/startPage.jsp" />
<%-- Global header --%>
<cms:render value="${gHeader}"/>
<div class="our-work-wrapper">
  <div class="our-work">
    <div class="article-container">
      <div class="article-row">
        <div class="article-inner">
          <h3 class="title">${content.getSubTitle()}</h3>
          <c:forEach var="item" items="${content.getArticles()}">
              <c:if test="${item.getImage() != null}">
                  <c:choose>
                      <c:when test="${item.isImageToLeft()}">
                          <div class="img img-inline pull-left">
                              <cms:img src="${item.getImage()}"/>
                          </div>
                      </c:when>
                      <c:otherwise>
                          <div class="img img-inline pull-right">
                              <cms:img src="${item.getImage()}"/>
                          </div>
                      </c:otherwise>
                  </c:choose>
              </c:if>
              <c:choose>
                  <c:when test="${item.isDisplayTextAsBlockQuote()}">
                      <aside class="pullquote">
                          <p><cms:render value="${item.getArticleText()}"/></p>
                      </aside>
                  </c:when>
                  <c:otherwise>
                      <p><cms:render value="${item.getArticleText()}"/></p>
                  </c:otherwise>
              </c:choose>
          </c:forEach>
        </div>
      </div>
    </div>
    <div class="our-work-fluid-container">
      <div class="our-work-container" data-bsp-dev-clients>
        <div class="our-work-row">
          <div class="our-work-wrapper">
            <!-- Dev Card -->
              <c:forEach var="client" items="${content.getClients()}">
                <div class="our-work-card-outer">
                  <div class="our-work-card">
                          <div class="media">
                              <cms:img src="${client.getClientLogo()}"/>
                          </div>
                          <div class="text">
                              <h5 class="client">${client.getTitle()}</h5>
                          </div>
                          <div class="our-work-desc">
                              <h4 class="desc-title">${client.getAboutClientTitle()}</h4>
                              <p class="desc-blurb"><cms:render value="${client.getAboutClientBlurb()}"/></p>
                              <h4 class="desc-title">${client.getWhatWeDidTitle()}</h4>
                              <p class="desc-blurb"><cms:render value="${client.getWhatWeDidBlurb()}"/></p>
                          </div>
                  </div>
                </div>
              </c:forEach>
          </div>
        </div>
      </div>
    </div>

  </div>
</div>
<%-- Global footer --%>
<cms:render value="${gFooter}"/>

<%-- Global end --%>
<jsp:include page="/WEB-INF/common/endPage.jsp" />