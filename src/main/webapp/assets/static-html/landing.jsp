<%@include file="/WEB-INF/common/taglibs.jsp"%>
<%-- Global start --%>
<jsp:include page="/WEB-INF/common/startPage.jsp" />
<%-- Global header --%>
<jsp:include page="/assets/static-html/common/global-header.jsp" />
<div class="landing-wrapper">
    <%-- Optional Dl --%>
    <%-- Home Dl --%>
    <jsp:include page="/assets/static-html/enhancements/dynamic-lead.jsp" />

    <div class="article-container">
        <div class="article-row">
            <div class="article-inner">
                <h3 class="title">This is a test title</h3>
                <p>Lorem ipsum dolor sit amet, <a href="#">consectetur adipiscing</a> elit. Suspendisse tincidunt arcu lorem, id ultricies ante faucibus scelerisque. Nulla facilisi. Mauris egestas magna ut odio auctor, ut malesuada enim commodo. Aenean id sem lorem. Suspendisse sodales odio vel gravida feugiat. Nam vitae vehicula nibh. Integer quis erat congue, tempus ante a, sagittis libero. Sed fermentum eleifend nibh non pharetra. Nulla magna est, mattis vel aliquam condimentum, mattis at sem. Fusce dapibus euismod nisi in suscipit. Integer tincidunt rhoncus risus vel viverra. Aliquam ornare metus id tincidunt sagittis.</p>
                
                <%-- optional enhancement, can be placed anywhere in page/site, placed here as example --%>
                <jsp:include page="/assets/static-html/enhancements/img-right.jsp" />

                <p>Nam efficitur elit eu dolor convallis tincidunt. <a href="#">Consectetur adipiscing</a> a congue efficitur. Donec eu faucibus erat. Curabitur sagittis, nunc et gravida varius, est leo imperdiet augue, gravida maximus lacus magna a lectus. Nunc blandit non libero sed eleifend. Mauris vitae sapien ac lectus ultricies tempus vel imperdiet eros. Pellentesque arcu leo, facilisis id urna nec, dapibus luctus magna.</p>
                
                <%-- optional enhancement, can be placed anywhere in page/site, placed here as example --%>
                <jsp:include page="/assets/static-html/enhancements/blockquote.jsp" />

                <%-- optional enhancement, can be placed anywhere in page/site, placed here as example --%>
                <jsp:include page="/assets/static-html/enhancements/img-left.jsp" />

                <p>Cras scelerisque eleifend sapien, sit <a href="#">consectetur adipiscing</a> aliquam eget. Nulla ultricies mi accumsan placerat efficitur. Nulla facilisi. Maecenas pharetra mi eu neque pulvinar, consectetur dapibus lorem venenatis. Vestibulum pretium turpis vitae dui scelerisque, sed porta ipsum sodales. Sed laoreet justo a aliquam elementum. Aenean id congue diam. In eu est sed tellus malesuada consectetur ac in arcu. Vivamus turpis sem, varius ut ex id, interdum consequat lacus. Praesent et fringilla diam, et convallis nisl. Suspendisse tincidunt, tortor sed scelerisque tristique, sem felis tristique ante, vitae porta mauris nunc non sapien.</p>

            </div>
        </div>
    </div>
</div>

<%-- Global footer --%>
<jsp:include page="/assets/static-html/common/global-footer.jsp" />

<%-- Global end --%>
<jsp:include page="/WEB-INF/common/endPage.jsp" />