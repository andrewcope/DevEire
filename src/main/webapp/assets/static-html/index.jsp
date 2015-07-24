<%@include file="/WEB-INF/common/taglibs.jsp"%>
<%-- Global start --%>
<jsp:include page="/WEB-INF/common/startPage.jsp" />
<%-- Global header --%>
<jsp:include page="/assets/static-html/common/global-header.jsp" />

<div class="index-page">
    <div class="index-wrapper">
        <%-- standard article layout --%>
        <div class="article-container">
            <div class="article-row">
                <div class="article-inner">
                    <h3 class="title">DevEire Site on BSP 3.0</h3>
                    <p>The following is an index of the static pages that are completed:</p>
                    <ul class="list-large">
                        <li><a href="/assets/static-html/landing.jsp">Home Page</a></li>
                        <li><a href="/assets/static-html/clients.jsp">Client Page</a></li>
                        <ul>
                            <li><a href="/assets/static-html/client-list.jsp">Client List Page (Alternative)</a></li>
                        </ul>
                        <li><a href="/assets/static-html/team.jsp">Team Page</a></li>
                        <ul>
                            <li><a href="/assets/static-html/team-alt.jsp">Team Page (Alternative - Square Cards)</a></li>
                            <li><a href="/assets/static-html/team-alt2.jsp">Team Page (Alternative - Edge to Edge)</a></li>
                        </ul>
                        <li><a href="/assets/static-html/work.jsp">Work Page</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="indx-fluid-container" style="background: #f9f9f9;">
            <div class="index-container">
                <h4>Notes to Backend:</h4>

                <p>There are enhancements placed throughout all pages, these are just in as guidelines. They can be placed on any page in any order. The following is a list of these enhancements: </p>

                <ul class="list-large">
                    <li><a href="/assets/static-html/landing.jsp">Dynamic Lead -> Top of Landing Page</a></li>
                    <li><a href="/assets/static-html/landing.jsp">Inline Img - pull Right -> Middle of Landing Page</a></li>
                    <li><a href="/assets/static-html/landing.jsp">Blockquote -> Under inline img on landing page</a></li>
                    <li><a href="/assets/static-html/landing.jsp">Inline Img - pull Left -> Bottom of Landing Page</a></li>
                    <li><a href="/assets/static-html/enhancements.jsp">Generic Hero -> Top of enhancements page</a></li>
                    <li><a href="/assets/static-html/enhancements.jsp">Inline Gallery -> Top of enhancements page</a></li>
                </ul>

                <p>There is a static page containing all the enhancements - > <a href="/assets/static-html/enhancements.jsp">Here!</a></p>

            </div>
        </div>
        <%-- standard article layout --%>
        <div class="article-container">
            <div class="article-row">
                <div class="article-inner">
                    <h4>Team Page</h4>
                    <p>There are three variants of the Team Page, one has <a href="/assets/static-html/team.jsp">circle cards</a>, the other has <a href="/assets/static-html/team-alt.jsp">Square Cards</a>, and the final one is an<a href="/assets/static-html/team-alt2.jsp"> edge to edge experience.</a> Just waiting on someone to make a decision on which one to go with: :)</p>
                </div>
            </div>
        </div>
    </div>
    <%-- end article layout --%>
</div>
<%-- Global footer --%>
<jsp:include page="/assets/static-html/common/global-footer.jsp" />

<%-- Global end --%>
<jsp:include page="/WEB-INF/common/endPage.jsp" />