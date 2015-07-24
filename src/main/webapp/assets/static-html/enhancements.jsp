<%@include file="/WEB-INF/common/taglibs.jsp"%>
<%-- Global start --%>
<jsp:include page="/WEB-INF/common/startPage.jsp" />
<%-- Global header --%>
<jsp:include page="/assets/static-html/common/global-header.jsp" />

<div class="enhancements-page">
    <div class="enhancements-wrapper">
        <%-- optional enhancement, placed here as example --%>
        <%-- Generic Lead --%>
        <jsp:include page="/assets/static-html/enhancements/generic-lead.jsp"/>
        
        <div class="enhancements-fluid-container" style="background: #f9f9f9">
            <%-- team card container --%>
            <div class="enhancements-container">
                <div class="enhancements-inner">
                    <%-- Blockquote --%>
                    <jsp:include page="/assets/static-html/enhancements/blockquote.jsp" />

                    <%-- Inline Img - left --%>
                    <jsp:include page="/assets/static-html/enhancements/img-left.jsp" />

                    <%-- Inline Img - right --%>
                    <jsp:include page="/assets/static-html/enhancements/img-right.jsp" />
                    
                    <%-- Inline Gallery --%>
                    <jsp:include page="/assets/static-html/enhancements/enhancement-gallery.jsp" />
                </div>
            </div>

        </div>


    </div>
</div>
<%-- Global footer --%>
<jsp:include page="/assets/static-html/common/global-footer.jsp" />

<%-- Global end --%>
<jsp:include page="/WEB-INF/common/endPage.jsp" />