
<%@include file="/WEB-INF/common/taglibs.jsp" %>

<header class="main-header" id="global-header" data-bsp-header-scroll data-bsp-mobile-text>
  <div class="main-header-container">
    <section class="main-header-content">
      <div class="main-header-inner">
        <div class="main-header-logo">
          <a href="${content.getLogoLink().getUrl()}"><cms:img src="${content.getLogo()}" class="logo"/></a>
        </div>
        <div id="mobile-dot"></div>
        <button id="mobile-btn" class="icon icon-burger" data-bsp-mobile-nav></button>
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
