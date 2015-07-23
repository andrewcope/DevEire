<%@include file="/WEB-INF/common/taglibs.jsp"%>
<%-- Global start --%>
<jsp:include page="/WEB-INF/common/startPage.jsp" />
<%-- Global header --%>
<jsp:include page="/assets/static-html/common/global-header.jsp" />

<div class="generic-page client-page">
    <div class="client-wrapper">
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

        <%-- client card fluid container, edge to edge bg color, color should be published in CMS --%>
        <div class="card-fluid-container" style="background: #2d3237">
            <div class="card-container" data-bsp-dev-card-actions>

                <%-- client card row --%>
                <div class="card-row">

                    <%-- client card wrapper + card-type  - # on card base is important, needed for anchor attr in URL--%>
                    <div class="card-wrapper card-client">
                        
                        <%-- client card--%>
                        <div class="card-base" id="drivechipputt">
                            <div class="card-inner">
                                <div class="media">
                                    <img src="/assets/images/work/dcp.png">
                                </div>
                                <div class="text">
                                    <h5 class="title" data-bsp-truncate data-bsp-truncate-options='{"maxLines":2}'>Drvie Chip &amp Putt</h5>
                                </div> 
                                <div class="card-desc">
                                    <h4 class="desc-title"><span>title</span></h4>
                                    <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare. Sed vehicula ligula vel velit sollicitudin, ac ornare nunc placerat. Etiam a suscipit odio, id feugiat dolor. Donec enim tellus, molestie at fermentum at, convallis rhoncus nibh. <a href="#" class="lk-chevron-inverse">Read More</a> </p> 
                                </div>
                            </div>   
                        </div>  
                        
                        <%-- client card--%>
                        <div class="card-base" id="cocacola">
                            <div class="card-inner">
                                <div class="media">
                                    <img src="/assets/images/work/coke.png">
                                </div>
                                <div class="text">
                                    <h5 class="title" data-bsp-truncate data-bsp-truncate-options='{"maxLines":2}'>The Coca-Cola Company</h5>
                                </div> 
                                <div class="card-desc">
                                    <h4 class="desc-title"><span>title</span></h4>
                                    <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare. Sed vehicula ligula vel velit sollicitudin, ac ornare nunc placerat. Etiam a suscipit odio, id feugiat dolor. Donec enim tellus, molestie at fermentum at, convallis rhoncus nibh. <a href="#" class="lk-chevron-inverse">Read More</a> </p> 
                                </div>
                            </div>   
                        </div>
                        
                        <%-- client card--%>
                        <div class="card-base" id="cisco">
                            <div class="card-inner">
                                <div class="media">
                                    <img src="/assets/images/work/cisco.jpeg">
                                </div>
                                <div class="text">
                                    <h5 class="title" data-bsp-truncate data-bsp-truncate-options='{"maxLines":2}'>Cisco</h5>
                                </div> 
                                <div class="card-desc">
                                    <h4 class="desc-title"><span>title</span></h4>
                                    <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare. Sed vehicula ligula vel velit sollicitudin, ac ornare nunc placerat. Etiam a suscipit odio, id feugiat dolor. Donec enim tellus, molestie at fermentum at, convallis rhoncus nibh. <a href="#" class="lk-chevron-inverse">Read More</a> </p> 
                                </div>
                            </div>   
                        </div>

                        <%-- client card--%>
                        <div class="card-base" id="walmart">
                            <div class="card-inner">
                                <div class="media">
                                    <img src="/assets/images/work/emt.png">
                                </div>
                                <div class="text">
                                    <h5 class="title" data-bsp-truncate data-bsp-truncate-options='{"maxLines":2}'>Walmart</h5>
                                </div> 
                                <div class="card-desc">
                                    <h4 class="desc-title"><span>title</span></h4>
                                    <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare. Sed vehicula ligula vel velit sollicitudin, ac ornare nunc placerat. Etiam a suscipit odio, id feugiat dolor. Donec enim tellus, molestie at fermentum at, convallis rhoncus nibh. <a href="#" class="lk-chevron-inverse">Read More</a> </p> 
                                </div>
                            </div>  
                        </div>
                        
                        <%-- client card--%>
                        <div class="card-base" id="usnews">
                            <div class="card-inner">
                                <div class="media">
                                    <img src="/assets/images/work/usnews.png">
                                </div>
                                <div class="text">
                                    <h5 class="title" data-bsp-truncate data-bsp-truncate-options='{"maxLines":2}'>U.S. News & World Report</h5>
                                </div> 
                                <div class="card-desc">
                                    <h4 class="desc-title"><span>title</span></h4>
                                    <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare. Sed vehicula ligula vel velit sollicitudin, ac ornare nunc placerat. Etiam a suscipit odio, id feugiat dolor. Donec enim tellus, molestie at fermentum at, convallis rhoncus nibh. <a href="#" class="lk-chevron-inverse">Read More</a> </p> 
                                </div>
                            </div>   
                        </div>
                        
                        <%-- client card--%>
                        <div class="card-base" id="mit">
                            <div class="card-inner">
                                <div class="media">
                                    <img src="/assets/images/work/mit.jpeg">
                                </div>
                                <div class="text">
                                    <h5 class="title" data-bsp-truncate data-bsp-truncate-options='{"maxLines":2}'>MIT Sloan Executive Education</h5>
                                </div> 
                                <div class="card-desc">
                                    <h4 class="desc-title"><span>title</span></h4>
                                    <p class="desc-blurb">In leo lectus, tincidunt et cursus eget, dignissim at ante. Donec lacinia lorem ac nibh facilisis scelerisque. Sed lobortis maximus pharetra. Fusce lacinia neque ut molestie ornare. Sed vehicula ligula vel velit sollicitudin, ac ornare nunc placerat. Etiam a suscipit odio, id feugiat dolor. Donec enim tellus, molestie at fermentum at, convallis rhoncus nibh. <a href="#" class="lk-chevron-inverse">Read More</a> </p> 
                                </div>
                            </div>   
                        </div>
                    </div>
                </div>
            </div>
            <%-- end client card fluid layout --%>
        </div>
    </div>
    <%-- standard article layout --%>
    <div class="article-container">
        <div class="article-row">
            <div class="article-inner">
                <%-- optional enhancement, can be placed anywhere in page/site, placed here as example --%>
                <jsp:include page="/assets/static-html/enhancements/img-left.jsp" />
                <p>Lorem ipsum dolor sit amet, <a href="#">consectetur adipiscing</a> elit. Suspendisse tincidunt arcu lorem, id ultricies ante faucibus scelerisque. Nulla facilisi. Mauris egestas magna ut odio auctor, ut malesuada enim commodo. Aenean id sem lorem. Suspendisse sodales odio vel gravida feugiat. Nam vitae vehicula nibh. Integer quis erat congue, tempus ante a, sagittis libero. Sed fermentum eleifend nibh non pharetra. Nulla magna est, mattis vel aliquam condimentum, mattis at sem. Fusce dapibus euismod nisi in suscipit. Integer tincidunt rhoncus risus vel viverra. Aliquam ornare metus id tincidunt sagittis.</p>

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