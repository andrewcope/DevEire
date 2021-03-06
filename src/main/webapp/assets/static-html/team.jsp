<%@include file="/WEB-INF/common/taglibs.jsp"%>
<%-- Global start --%>
<jsp:include page="/WEB-INF/common/startPage.jsp" />
<%-- Global header --%>
<jsp:include page="/assets/static-html/common/global-header.jsp" />

<div class="team-page">
    <div class="team-wrapper">
        <%-- standard article layout --%>
        <div class="article-container">
            <div class="article-row">
                <div class="article-inner">
                    <h3 class="title">This is a test title</h3>
                    <p>Lorem ipsum dolor sit amet, <a href="#">consectetur adipiscing</a> elit. Suspendisse tincidunt arcu lorem, id ultricies ante faucibus scelerisque. Nulla facilisi. Mauris egestas magna ut odio auctor, ut malesuada enim commodo. Aenean id sem lorem. Suspendisse sodales odio vel gravida feugiat. Nam vitae vehicula nibh. Integer quis erat congue, tempus ante a, sagittis libero. Sed fermentum eleifend nibh non pharetra. Nulla magna est, mattis vel aliquam condimentum, mattis at sem. Fusce dapibus euismod nisi in suscipit. Integer tincidunt rhoncus risus vel viverra. Aliquam ornare metus id tincidunt sagittis.</p>

                    <%-- optional enhancement, can be placed anywhere in page/site, placed here as example --%>
                    <jsp:include page="/assets/static-html/enhancements/blockquote.jsp" />

                </div>
            </div>
        </div>
        <%-- end article layout --%>

        <%-- team card fluid container, edge to edge bg color, color should be published in CMS --%>
        <div class="card-fluid-container" style="background: #f9f9f9">
            <%-- team card container --%>
            <div class="card-container" data-bsp-dev-card-actions>

                <%-- team card row --%>
                <div class="card-row">

                    <%-- team card wrapper + card-type  - # on card base is important, needed for anchor attr in URL--%>
                    <%-- if round cards, add 'card-round' to following div, else, remove--%>
                    <div class="card-wrapper card-team card-round">

                        <%-- team card--%>
                        <div class="card-base" id="darragh" data-pos="frontend">
                            <div class="media">
                                <img src="http://lorempixel.com/220/220/people/1/">
                            </div>
                            <div class="text">
                                <h4 class="title">Darragh</h4>
                                <h5 class="subtitle">Front End</h5>
                            </div>
                            <%-- all these fields are optional, just here as a placeholder--%>
                            <div class="card-desc">
                                <h4 class="desc-title"><span>Darraghs' role at DevEire</span></h4>                 
                                <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare. Sed vehicula ligula vel velit sollicitudin, ac ornare nunc placerat. Etiam a suscipit odio, id feugiat dolor. Donec enim tellus, molestie at fermentum at, convallis rhoncus nibh.</p>
                                <ul class="list-social">
                                    <li><a href="mailto:devname@deveire.com?subject=Hello!" class="social-icon"><i class="icon icon-mail"></i></a></li>
                                    <li><a href="#" class="social-icon"><i class="icon icon-linkedin"></i></a></li>
                                </ul> 
                                <h4 class="desc-title"><span>Darraghs' Projects</span></h4>
                                <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare.                   
                                </p>
                                <ul class="list-bullet list-col4">
                                    <li><a href="/assets/static-html/clients.jsp#!drivechipputt">Drive, Chip &amp Putt</a></li>
                                    <li><a href="/assets/static-html/clients.jsp#!walmart">Walmart</a></li>
                                </ul>
                            </div>                  
                            <span class="icon-toggle ">+</span>
                        </div>

                        <%-- team card--%>
                        <div class="card-base" id="richard" data-pos="frontend">
                            <div class="media">
                                <img src="http://lorempixel.com/220/220/people/2/">
                            </div>
                            <div class="text">
                                <h4 class="title">Richard</h4>
                                <h5 class="subtitle">Front End</h5>
                            </div>
                            <%-- all these fields are optional, just here as a placeholder--%>
                            <div class="card-desc">
                                <h4 class="desc-title"><span>Richards' role at DevEire</span></h4>
                                <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare. Sed vehicula ligula vel velit sollicitudin, ac ornare nunc placerat. Etiam a suscipit odio, id feugiat dolor. Donec enim tellus, molestie at fermentum at, convallis rhoncus nibh.</p>
                                <ul class="list-social">
                                    <li><a href="mailto:devname@deveire.com?subject=Hello!" class="social-icon"><i class="icon icon-mail"></i></a></li>
                                    <li><a href="#" class="social-icon"><i class="icon icon-linkedin"></i></a></li>
                                </ul>
                                <h4 class="desc-title"><span>Richards' Projects</span></h4>
                                <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare.                   
                                </p>
                                <ul class="list-bullet list-col4">
                                    <li><a href="/assets/static-html/clients.jsp#!drivechipputt">Drive, Chip &amp Putt</a></li>
                                    <li><a href="/assets/static-html/clients.jsp#!walmart">Walmart</a></li>
                                </ul>
                            </div>                  
                            <span class="icon-toggle ">+</span>
                        </div>

                        <%-- team card--%>
                        <div class="card-base" id="alan" data-pos="backend">
                            <div class="media">
                                <img src="http://lorempixel.com/220/220/people/3/">
                            </div>
                            <div class="text">
                                <h4 class="title">Alan</h4>
                                <h5 class="subtitle">Back-End</h5>
                            </div>
                            <%-- all these fields are optional, just here as a placeholder--%>
                            <div class="card-desc">
                                <h4 class="desc-title"><span>Alans' role at DevEire</span></h4>
                                <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare. Sed vehicula ligula vel velit sollicitudin, ac ornare nunc placerat. Etiam a suscipit odio, id feugiat dolor. Donec enim tellus, molestie at fermentum at, convallis rhoncus nibh.</p>
                                <ul class="list-social">
                                    <li><a href="mailto:devname@deveire.com?subject=Hello!" class="social-icon"><i class="icon icon-mail"></i></a></li>
                                    <li><a href="#" class="social-icon"><i class="icon icon-linkedin"></i></a></li>
                                </ul>
                                <h4 class="desc-title"><span>Alans' Projects</span></h4>
                                <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare.                   
                                </p>
                                <ul class="list-bullet list-col4">
                                    <li><a href="/assets/static-html/clients.jsp#!drivechipputt">Drive, Chip &amp Putt</a></li>
                                    <li><a href="/assets/static-html/clients.jsp#!walmart">Walmart</a></li>
                                </ul>
                            </div>                  
                            <span class="icon-toggle ">+</span>
                        </div>

                        <%-- team card--%>
                        <div class="card-base" id="ramon">
                            <div class="media">
                                <img src="http://lorempixel.com/220/220/people/4/">
                            </div>
                            <div class="text">
                                <h4 class="title">Ramon</h4>
                                <h5 class="subtitle">Front-End</h5>
                            </div>
                            <%-- all these fields are optional, just here as a placeholder--%>
                            <div class="card-desc">
                                <h4 class="desc-title"><span>Ramons' role at DevEire</span></h4>
                                <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare. Sed vehicula ligula vel velit sollicitudin, ac ornare nunc placerat. Etiam a suscipit odio, id feugiat dolor. Donec enim tellus, molestie at fermentum at, convallis rhoncus nibh.</p>
                                <ul class="list-social">
                                    <li><a href="mailto:devname@deveire.com?subject=Hello!" class="social-icon"><i class="icon icon-mail"></i></a></li>
                                    <li><a href="#" class="social-icon"><i class="icon icon-linkedin"></i></a></li>
                                </ul>
                                <h4 class="desc-title"><span>Ramons' Projects</span></h4>
                                <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare.                   
                                </p>
                                <ul class="list-bullet list-col4">
                                    <li><a href="/assets/static-html/clients.jsp#!drivechipputt">Drive, Chip &amp Putt</a></li>
                                    <li><a href="/assets/static-html/clients.jsp#!walmart">Walmart</a></li>
                                </ul>
                            </div>                  
                            <span class="icon-toggle ">+</span>
                        </div>

                        <%-- team card--%>
                        <div class="card-base" id="martin" data-pos="backend">
                            <div class="media">
                                <img src="http://lorempixel.com/220/220/people/5/">
                            </div>
                            <div class="text">
                                <h4 class="title">Martin</h4>
                                <h5 class="subtitle">Back-End</h5>
                            </div>
                            <%-- all these fields are optional, just here as a placeholder--%>
                            <div class="card-desc">
                                <h4 class="desc-title"><span>Martins' role at DevEire</span></h4>
                                <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare. Sed vehicula ligula vel velit sollicitudin, ac ornare nunc placerat. Etiam a suscipit odio, id feugiat dolor. Donec enim tellus, molestie at fermentum at, convallis rhoncus nibh.</p>
                                <ul class="list-social">
                                    <li><a href="mailto:devname@deveire.com?subject=Hello!" class="social-icon"><i class="icon icon-mail"></i></a></li>
                                    <li><a href="#" class="social-icon"><i class="icon icon-linkedin"></i></a></li>
                                </ul>
                                <h4 class="desc-title"><span>Martins' Projects</span></h4>
                                <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare.                   
                                </p>
                                <ul class="list-bullet list-col4">
                                    <li><a href="/assets/static-html/clients.jsp#!drivechipputt">Drive, Chip &amp Putt</a></li>
                                    <li><a href="/assets/static-html/clients.jsp#!walmart">Walmart</a></li>
                                </ul>
                            </div>                  
                            <span class="icon-toggle ">+</span>
                        </div>

                        <%-- team card--%>
                        <div class="card-base" id="lee" data-pos="backend">
                            <div class="media">
                                <img src="http://lorempixel.com/220/220/people/5/">
                            </div>
                            <div class="text">
                                <h4 class="title">Lee</h4>
                                <h5 class="subtitle">Back-End</h5>
                            </div>
                            <%-- all these fields are optional, just here as a placeholder--%>
                            <div class="card-desc">
                                <h4 class="desc-title"><span>Lees' role at DevEire</span></h4>
                                <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare. Sed vehicula ligula vel velit sollicitudin, ac ornare nunc placerat. Etiam a suscipit odio, id feugiat dolor. Donec enim tellus, molestie at fermentum at, convallis rhoncus nibh.</p>
                                <ul class="list-social">
                                    <li><a href="mailto:devname@deveire.com?subject=Hello!" class="social-icon"><i class="icon icon-mail"></i></a></li>
                                    <li><a href="#" class="social-icon"><i class="icon icon-linkedin"></i></a></li>
                                </ul>
                                <h4 class="desc-title"><span>Lees' Projects</span></h4>
                                <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare.                   
                                </p>
                                <ul class="list-bullet list-col4">
                                    <li><a href="/assets/static-html/clients.jsp#!drivechipputt">Drive, Chip &amp Putt</a></li>
                                    <li><a href="/assets/static-html/clients.jsp#!walmart">Walmart</a></li>
                                </ul>
                            </div>                  
                            <span class="icon-toggle ">+</span>
                        </div>

                    </div>
                </div>
                <%-- end team card container --%>
            </div>
            <%-- end team card fluid container --%>
        </div>

    </div>
    <%-- standard article layout --%>
    <div class="article-container">
        <div class="article-row">
            <div class="article-inner">
                <p>Lorem ipsum dolor sit amet, <a href="#">consectetur adipiscing</a> elit. Suspendisse tincidunt arcu lorem, id ultricies ante faucibus scelerisque. Nulla facilisi. Mauris egestas magna ut odio auctor, ut malesuada enim commodo. Aenean id sem lorem. Suspendisse sodales odio vel gravida feugiat. Nam vitae vehicula nibh. Integer quis erat congue, tempus ante a, sagittis libero. Sed fermentum eleifend nibh non pharetra. Nulla magna est, mattis vel aliquam condimentum, mattis at sem. Fusce dapibus euismod nisi in suscipit. Integer tincidunt rhoncus risus vel viverra. Aliquam ornare metus id tincidunt sagittis.</p>

                <%-- Inline Gallery --%>
                <jsp:include page="/assets/static-html/enhancements/enhancement-gallery.jsp" />
                
                <p>Cras scelerisque eleifend sapien, sit <a href="#">consectetur adipiscing</a> aliquam eget. Nulla ultricies mi accumsan placerat efficitur. Nulla facilisi. Maecenas pharetra mi eu neque pulvinar, consectetur dapibus lorem venenatis. Vestibulum pretium turpis vitae dui scelerisque, sed porta ipsum sodales. Sed laoreet justo a aliquam elementum. Aenean id congue diam. In eu est sed tellus malesuada consectetur ac in arcu. Vivamus turpis sem, varius ut ex id, interdum consequat lacus. Praesent et fringilla diam, et convallis nisl. Suspendisse tincidunt, tortor sed scelerisque tristique, sem felis tristique ante, vitae porta mauris nunc non sapien.</p>
            </div>
        </div>
    </div>
    <%-- end article layout --%>
</div>
</div>
<%-- Global footer --%>
<jsp:include page="/assets/static-html/common/global-footer.jsp" />

<%-- Global end --%>
<jsp:include page="/WEB-INF/common/endPage.jsp" />