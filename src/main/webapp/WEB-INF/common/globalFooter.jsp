<%@include file="/WEB-INF/common/taglibs.jsp" %>

<footer class="main-footer" id="global-footer" data-bsp-back-to-top>
    <div class="main-footer-fluid-container">
        <div class="dev-back-top">
            <a href="#" class="icon icon-arrow-up" id="back-to-top"></a>
        </div>
        <section class="main-footer-container">
            <div class="main-footer-row">
                <div class="main-footer-inner">
                    <div class="footer-dev-address">
                        <a href="/" class="footer-logo"><cms:img src="${content.getLogo()}"/></a>
                        <ul class="address-list">
                            <li class="footer-header">${content.getAddress().getTitle()}</li>
                            <li>${content.getAddress().getFirstLine()}</li>
                            <li>${content.getAddress().getSecondLine()}</li>
                            <li>${content.getAddress().getThirdLine()}</li>
                            <li>${content.getAddress().getFourthLine()}</li>
                            <li>${content.getAddress().getFifthLine()}</li>
                        </ul>
                    </div>

                    <div class="footer-dev-details">
                        <li class="footer-header">${content.getContactInfo().getTitle()}</li>
                            <c:forEach var="contactDetail" items="${content.getContactInfo().getContactDetails()}">
                                <c:choose>
                                    <c:when test="${contactDetail.getIcon().toString().equals('icon-phone')}">
                                    <li class="icon ${contactDetail.getIcon().toString()}">
                                        <a class="#" href="tel:${contactDetail.getContactDetail()}">${contactDetail.getContactDetail()}</a>
                                    </li>
                                </c:when>
                                <c:when test="${contactDetail.getIcon().toString().equals('icon-mail')}">
                                    <li class="icon ${contactDetail.getIcon().toString()}">
                                        <a href="mailto:${contactDetail.getContactDetail()}?subject=Hello!">${contactDetail.getContactDetail()}</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="icon ${contactDetail.getIcon().toString()}">
                                        <a href="${contactDetail.getContactLink().getUrl()}">${contactDetail.getContactDetail()}</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="sub-footer-fluid-container bg-green-light">
        <section class="sub-footer-container">
            <div class="sub-footer-row">
                <div class="sub-footer-inner">
                    <p>${content.getCopyright()}</p>
                </div>
            </div>
        </section>
    </div>
</footer>