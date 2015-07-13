<%@include file="/WEB-INF/common/taglibs.jsp" %>

<header class="main-header" id="global-header" data-bsp-header-scroll data-bsp-mobile-text>
    <div class="main-header-container">
        <section class="main-header-content">
            <div class="main-header-inner">
                <div class="main-header-logo">
                    <cms:img  src="${content.logo}" size="header-logo" class="logo"/>
                </div>
                <ul class="header-social">

                    <c:forEach var="link" items="${content.socialUrls}" varStatus="loop">                            
                        <li><a href="${link.link.getUrl()}" class="${link.getClassname()}" target="${image.target()}"></a></li>
                    </c:forEach>
                </ul> 
                <div id="mobile-dot"></div>
                <button id="mobile-btn" class="icon icon-burger" data-bsp-mobile-nav></button>
                <div id="global-nav">
                    <ul class="header-nav">
                        <c:forEach var="headerItem" items="${content.headerItems}" varStatus="loop">

                            <c:if test="${!empty headerItem.module}"> 
                                <li><a href="${headerItem.link.getUrl()}" class="${loop.first ? ' active first' : ''} ${loop.last ? ' btn btn-narrow' : ''}" 
                                    target="${headerItem.link.target}" data-header-moduleId="${headerItem.module.id}"> ${headerItem.label}</a></li>
                            </c:if>
                            
                            <c:if test="${empty headerItem.module}">
                                <li><a href="${headerItem.link.getUrl()}" class="${loop.first ? ' active first' : ''} ${loop.last ? ' btn btn-narrow' : ''}" 
                                    target="${headerItem.link.target}"> ${headerItem.label}</a></li>
                            </c:if>
                             
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </section>
    </div>
</header>
