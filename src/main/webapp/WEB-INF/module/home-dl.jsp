<%@include file="/WEB-INF/common/taglibs.jsp" %>

<div class="dev-carousel dev-dl" data-bsp-dynamic-lead>
    <div class="dev-carousel-stage">
        <figure class="carousel-slide">
            <div class="carousel-bg-img">
                <cms:img src="${content.getImageLead().getImage()}"/>
            </div>
        <div class="carousel-container">                
            <div class="carousel-content">                   
                <div class="carousel-content-inner">
                    <div class="carousel-img-wrapper">
                        <cms:img src="${content.getImageLead().getInfoLink().getLogo()}"/>
                    </div>
                    <div class="carousel-info-wrapper">
                        <h2 class="title">${content.getImageLead().getInfoLink().getTitle()}</h2>
                        <p class="blurb">${content.getImageLead().getInfoLink().getBlurb()}</p>
                        <a href="${content.getImageLead().getInfoLink().getLink().getUrl()}" class="btn btn-dl">${content.getImageLead().getInfoLink().getLink().getText()}</a>
                    </div>
                </div>
            </div>
        </div>
        </figure>
    </div>
</div>


