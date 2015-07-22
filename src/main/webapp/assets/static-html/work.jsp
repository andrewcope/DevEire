<%@include file="/WEB-INF/common/taglibs.jsp"%>
<%-- Global start --%>
<jsp:include page="/WEB-INF/common/startPage.jsp" />
<%-- Global header --%>
<jsp:include page="/assets/static-html/common/global-header.jsp" />

<div class="our-position-wrapper">
    <%-- optional enhancement, placed here as example --%>
    <%-- Generic Lead --%>
    <jsp:include page="/assets/static-html/enhancements/generic-lead.jsp" />

    <div class="our-position-container">
        <div class="our-position-inner">
            <div class="our-position-col">

                <h1>This is a title</h1>
                <p>This is a blurb</p>

                <div class="our-position-dd-filter" data-bsp-work-dd>
                    <form action="#" method="post" id="vacancy-filter" class="dev-select">
                        <select name="filter">
                            <option value="">Vacancies By Department</option>
                            <option value="all">All Vacancies</option>
                            <option value="backend">Backend (3)</option>
                            <option value="frontend">Frontend (2)</option>
                            <option value="qa">QA (1)</option>
                        </select>
                    </form>
                    <div class="jobs-list jobs-list--filterable" id="jobs-list">
                        <ul class="jobs-list__list">
                            <li class="list-item" data-filter="backend">
                                <a href="http://wearefriday.com/wants/senior-delivery-manager">
                                    <span class="jobs-list__title">Senior Delivery Manager</span><span class="jobs-list__icon">»</span>
                                    <span class="jobs-list__meta">Permanent</span>
                                </a>
                            </li>
                            <li class="list-item" data-filter="frontend">
                                <a href="http://wearefriday.com/wants/senior-frontend-engineer">
                                    <span class="jobs-list__title">Senior Frontend Engineer</span><span class="jobs-list__icon">»</span>
                                    <span class="jobs-list__meta">Permanent</span>
                                </a>
                            </li>
                            <li class="list-item" data-filter="qa">
                                <a href="http://wearefriday.com/wants/sitecore-engineer">
                                    <span class="jobs-list__title">Sitecore Engineer</span><span class="jobs-list__icon">»</span>
                                    <span class="jobs-list__meta">Permanent</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="article-container">
        <div class="article-row">
            <div class="article-inner">
                <h3 class="title">This is a test title</h3>
                <p>Lorem ipsum dolor sit amet, <a href="#">consectetur adipiscing</a> elit. Suspendisse tincidunt arcu lorem, id ultricies ante faucibus scelerisque. Nulla facilisi. Mauris egestas magna ut odio auctor, ut malesuada enim commodo. Aenean id sem lorem. Suspendisse sodales odio vel gravida feugiat. Nam vitae vehicula nibh. Integer quis erat congue, tempus ante a, sagittis libero. Sed fermentum eleifend nibh non pharetra. Nulla magna est, mattis vel aliquam condimentum, mattis at sem. Fusce dapibus euismod nisi in suscipit. Integer tincidunt rhoncus risus vel viverra. Aliquam ornare metus id tincidunt sagittis.</p>

                <jsp:include page="/assets/static-html/enhancements/blockquote.jsp" />

                <p>Cras scelerisque eleifend sapien, sit <a href="#">consectetur adipiscing</a> aliquam eget. Nulla ultricies mi accumsan placerat efficitur. Nulla facilisi. Maecenas pharetra mi eu neque pulvinar, consectetur dapibus lorem venenatis. Vestibulum pretium turpis vitae dui scelerisque, sed porta ipsum sodales. Sed laoreet justo a aliquam elementum. Aenean id congue diam. In eu est sed tellus malesuada consectetur ac in arcu. Vivamus turpis sem, varius ut ex id, interdum consequat lacus. Praesent et fringilla diam, et convallis nisl. Suspendisse tincidunt, tortor sed scelerisque tristique, sem felis tristique ante, vitae porta mauris nunc non sapien.</p>
            </div>
        </div>
    </div>
</div>
<%-- Global footer --%>
<jsp:include page="/assets/static-html/common/global-footer.jsp" />

<%-- Global end --%>
<jsp:include page="/WEB-INF/common/endPage.jsp" />