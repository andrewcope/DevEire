
<%@include file="/WEB-INF/common/taglibs.jsp" %>

<header class="main-header" id="global-header" data-bsp-mobile-text data-bsp-header-scroll data-bsp-mobile-nav>
    <div class="main-header-container">
        <section class="main-header-content">
            <div class="main-header-inner">
                <div class="main-header-logo">
                    <a href="${content.getLogoLink().getUrl()}"><cms:img src="${content.getLogo()}" class="logo"/></a>
                </div>
                <button id="mobile-btn" class="icon-hamburger icon-hamburger-mobile">
                    <span>toggle menu</span>
                </button>
                <%-- Mobile nav (full screen experience) --%>
                <div id="mobile-nav">
                    <c:forEach var="headerItem" items="${content.headerItems}" varStatus="loop">
                        <li><a href="${headerItem.link.getUrl()}">${headerItem.label}</a></li>
                        </c:forEach>
                </div>
                <div id="global-nav">
                    <ul class="header-nav">
                        <c:forEach var="headerItem" items="${content.headerItems}" varStatus="loop">
                            <li><a href="${headerItem.link.getUrl()}">${headerItem.label}</a></li>
                            </c:forEach>
                    </ul>
                </div>
            </div>
        </section>
    </div>
</header>

