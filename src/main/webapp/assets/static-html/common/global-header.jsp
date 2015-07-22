<%@include file="/WEB-INF/common/taglibs.jsp" %>

<header class="main-header" id="global-header" data-bsp-mobile-text data-bsp-header-scroll data-bsp-mobile-nav>
    <div class="main-header-container">
        <section class="main-header-content">
            <div class="main-header-inner">
                <div class="main-header-logo">
                    <a href="/assets/static-html/landing.jsp"><img src="/assets/images/logo.png" class="logo"></a>
                </div>
                <button id="mobile-btn" class="icon-hamburger icon-hamburger-mobile">
                    <span>toggle menu</span>
                </button>
                <%-- Mobile nav (full screen experience) --%>
                <div id="mobile-nav">
                    <ul class="header-nav">   
                        <li><a class="active" href="landing.jsp">Home</a></li> 
                        <li><a href="clients.jsp">Our Clients</a></li> 
                        <li><a href="team.jsp">Our Team</a></li> 
                        <li><a href="work.jsp">Work At DevEire</a></li> 
                    </ul>
                </div>
                <div id="global-nav">
                    <ul class="header-nav">  
                        <li><a class="active" href="landing.jsp">Home</a></li> 
                        <li><a href="clients.jsp">Our Clients</a></li> 
                        <li><a href="team.jsp">Our Team</a></li> 
                        <li><a href="work.jsp">Work At DevEire</a></li> 
                    </ul>
                </div>
            </div>
        </section>
    </div>
</header>
