<%@ page import="com.deveire.utils.DeveireUtils" %>

<%
    pageContext.setAttribute("gHeader", DeveireUtils.getSiteSettings().getHeader());
    pageContext.setAttribute("gFooter", DeveireUtils.getSiteSettings().getFooter());
%>


<%@include file="/WEB-INF/common/taglibs.jsp" %>
<%-- Global start --%>
<jsp:include page="/WEB-INF/common/startPage.jsp"/>
<%-- Global header --%>
<cms:render value="${gHeader}"/>

<div class="our-team-wrapper">


    <div class="dev-hero generic-hero">
        <div class="dev-hero-bg">
        </div>
        <div class="hero-bg-img">
            <cms:img src="${content.getBackgroundImage()}"/>
        </div>
        <div class="dev-hero-container">
            <div class="hero-title">
                <h1>${content.getSubTitle()}</h1>
            </div>
        </div>
    </div>

    <div class="dev-team">
        <div class="article-container">
            <div class="article-row">
                <div class="article-inner">
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


        <div class="team-container" data-bsp-dev-team>
            <div class="team-row" id="dev-team">


                <!-- Dev Card -->
                <c:forEach var="teamMemer" items="${content.getTeam()}">
                <c:choose>
                <c:when test="${teamMemer.getShape().toString().equals('CIRCLE')}">
                <div class="team-card circle-card ">
                    </c:when>
                    <c:otherwise>
                    <div class="team-card ">
                        </c:otherwise>
                        </c:choose>

                        <div class="media">
                            <cms:img src="${teamMemer.getHeadshot()}"/>
                        </div>
                        <div class="text">
                            <h4 class="team-name">${teamMemer.getName()}</h4>
                            <h5 class="team-pos">${teamMemer.getPosition()}</h5>
                        </div>


                        <div class="team-desc">
                            <--<h4 class="desc-title">${teamMemer.getName()}s role at DevEire</h4>

                            <p class="desc-blurb"><cms:render value="${teamMemer.getAboutTheRole()}"/></p>
                            <h4 class="desc-title">About ${teamMemer.getName()}</h4>

                            <p class="desc-blurb"><cms:render value="${teamMemer.getAboutTeamMember()}"/></p>
                            <h4 class="desc-title">${teamMemer.getName()}s Projects</h4>

                            <p class="desc-blurb"><cms:render value="${teamMemer.getOverviewOfProjects()}"/></p>

                            <ul class="list-bullet list-col4">
                                <c:forEach var="project" items="${teamMemer.getListOfProjectsWorkedOn()}">
                                    <li>${project}</li>
                                </c:forEach>
                            </ul>
                        </div>
                        <span class="icon-toggle ">+</span>
                    </div>
                    </c:forEach>

            </div>
        </div>
    </div>
</div>

<%-- Global footer --%>
<cms:render value="${gFooter}"/>

<%-- Global end --%>
<jsp:include page="/WEB-INF/common/endPage.jsp"/>