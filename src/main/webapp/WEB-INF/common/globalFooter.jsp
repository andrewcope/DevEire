<%@include file="/WEB-INF/common/taglibs.jsp" %>

<footer class="main-footer" id="global-footer">
    <div class="main-footer-container">
        <div class="main-footer-inner">
            <section class="main-footer-social">
                <ul class="main-footer-social-links">
                    <c:forEach var="link" items="${content.imagesWithLinks}" varStatus="loop">                            
                        <li><a href="${link.link.getUrl()}" class="${link.getClassname()}" target="${image.link.target()}"></a></li>
                        </c:forEach>

                </ul>
            </section>
            <section class="main-footer-links">
                <ul class="main-footer-links-list">
                    <c:forEach var="link" items="${content.links}" varStatus="loop">
                        <li><a href="${link.getUrl()}" target="${link.target}"> ${link.text}</a></li>
                        </c:forEach>
                </ul>
            </section>
            <section class="main-footer-copy">
                <p>${content.copyright}</p>                
            </section>
            <section class="main-footer-logo">
                <a href="#">
                    <cms:img  src="${content.logo}" size="footer-logo" class=""/> 
                </a>
            </section>
        </div>
    </div>
</footer> 

<!-- Modal -->
<div class="modal" id="deveireVideoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <button type="button" class="close" data-dismiss="modal">
        </button>
        <div class="modal-content">                    
            <div class="modal-body">
                <div class="media-container">
                    <iframe src="" frameborder="0" allowfullscreen=""></iframe>
                    <img src="" class="modal-img"></iframe>
                </div>
            </div>
            <div class="modal-footer">                        
                <h3 class="media-title"></h3>
            </div>
        </div>
    </div>
</div>

<!-- Media Modal -->
<div class="modal" id="deveireMediaModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <button type="button" class="close" data-dismiss="modal">
        </button>
        <div class="modal-content">                    
            <div class="modal-body">
                <div class="media-container">
                    <img src="" class="modal-img" size="carousel-overlay" />
                </div>
            </div>
            <div class="modal-footer">                        
                <h3 class="media-title"></h3>
            </div>
        </div>
    </div>
</div>