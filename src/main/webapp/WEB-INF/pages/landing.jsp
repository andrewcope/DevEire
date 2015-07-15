<%@ page import="com.deveire.utils.DeveireUtils" %>

<%
    pageContext.setAttribute("gHeader", DeveireUtils.getSiteSettings().getHeader());
    pageContext.setAttribute("gFooter", DeveireUtils.getSiteSettings().getFooter());
%>

<%@include file="/WEB-INF/common/taglibs.jsp"%>
<%-- Global start --%>
<jsp:include page="/WEB-INF/common/startPage.jsp" />
<%-- Home header --%>
<cms:render value="${gHeader}"/>
<%-- Home Dl --%>
<jsp:include page="/WEB-INF/module/home-dl.jsp" />

<div class="article-container">
    <div class="article-row">
        <div class="article-inner">
            <h3 class="title">${content.getSubTitle()}</h3>
            <c:forEach var="item" items="${content.articles}">
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

<%-- Global footer --%>
<cms:render value="${gFooter}"/>

<%-- Global end --%>
<jsp:include page="/WEB-INF/common/endPage.jsp" />