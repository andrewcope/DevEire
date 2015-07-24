<%@include file="/WEB-INF/common/taglibs.jsp"%>
<%-- Global start --%>
<jsp:include page="/WEB-INF/common/startPage.jsp" />
<%-- Global header --%>
<jsp:include page="/assets/static-html/common/global-header.jsp" />

<div class="work-page" data-bsp-stretch-bg>
    <div class="work-wrapper">
        <%-- optional enhancement, placed here as example --%>
        <%-- Generic Lead --%>
        <%--  <jsp:include page="/assets/static-html/enhancements/generic-lead.jsp" /> --%>
        <%-- work fluid container, edge to edge bg color, color should be published in CMS, if no generic lead is set --%>
        <div class="work-fluid-container" style="background: #f9f9f9">
            <%-- team card container --%>
            <div class="work-container">
                <div class="work-inner">
                    <div class="col-full work-intro">
                        <h3 class="title">This is a test title</h3>
                        <%-- if generic lead is set, no need for following title --%>
                        <!--<h1 class="title">This is a title</h1>-->
                        <p class="blurb">This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb</p>
                    </div>
                    <div class="col-full work-dd-filter"  data-bsp-work-dd>
                        <form action="#" method="post" id="vacancy-filter" class="dev-select">
                            <select name="filter">
                                <option value="">Vacancies By Department</option>
                                <option value="all">All Vacancies</option>
                                <option value="backend">Backend (3)</option>
                                <option value="frontend">Frontend (2)</option>
                                <option value="qa">QA (1)</option>
                            </select>
                        </form>                           

                    </div>

                </div>
            </div>

        </div>


        <%-- team card fluid container, edge to edge bg color, color should be published in CMS --%>
        <div class="work-fluid-container filter-results" style="background: #fff">
            <%-- team card container --%>
            <div class="work-container">
                <div class="work-inner">
                    <div class="col-full">                        
                        <div class="list-work-filter" id="list-work">
                            <ul class="list-work">
                                <%-- position block - backend --%>
                                <li class="list-item" data-pos="backend">
                                    <%-- position 1--%>
                                    <h3 class="pos-type">Backend Pos 1</h3>
                                    <p class="pos-desc">Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb </p> 
                                    <hr class="alt2">
                                    <%-- position 2 --%>
                                    <h3 class="pos-type">Backend Pos 2</h3>
                                    <p class="pos-desc">Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb </p> <hr class="alt2">
                                    <%-- position 3 --%>
                                    <h3 class="pos-type">Backend Pos 3</h3>
                                    <p class="pos-desc">Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb </p>
                                    <hr class="alt2">
                                </li>
                                <%-- position block - frontend --%>
                                <li class="list-item" data-pos="frontend">
                                    <%-- position 1--%>
                                    <h3 class="pos-type">frontend Pos 1</h3>
                                    <p class="pos-desc">Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb </p>  <hr class="alt2">
                                    <%-- position 2--%>
                                    <h3 class="pos-type">frontend Pos 2</h3>
                                    <p class="pos-desc">Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb </p>
                                    <hr class="alt2">
                                </li>
                                <%-- position block - qa --%>
                                <li class="list-item" data-pos="qa">
                                    <%-- position 1--%>
                                    <h3 class="pos-type">qa Pos 1</h3>
                                    <p class="pos-desc">Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb Job description blurb </p> 
                                    <hr class="alt2">
                                </li>
                            </ul>
                        </div>
                        <p class="blurb">This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb This is a blurb</p>                        
                    </div>

                </div>
            </div>
        </div>


        <%-- work fluid container, edge to edge bg color, color should be published in CMS --%>
        <%-- this div fades in once a user selects an option from the dropdown --%>
        <div class="work-fluid-container work-info" style="background: #f9f9f9">
            <div class="work-container">
                <div class="work-inner">
                    <div class="col-full">  
                        <p>If you would like to apply for this role, please submit a CV and a covering letter to <a href="devemail@deveire.com?subject=Job!" class="social-icon">devemail@deveire.com</a> quoting the relevant position.</p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<%-- Global footer --%>
<jsp:include page="/assets/static-html/common/global-footer.jsp" />

<%-- Global end --%>
<jsp:include page="/WEB-INF/common/endPage.jsp" />