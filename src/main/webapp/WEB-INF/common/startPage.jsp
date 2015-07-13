<!DOCTYPE html>
<%@include file="/WEB-INF/common/taglibs.jsp" %>
<%@page import="com.psddev.cms.db.PageFilter" %>
<%@page import="com.psddev.cms.db.Site" %>
<%@page import="com.psddev.global.SiteModification" %> 

<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<jsp:include page="/WEB-INF/common/head.jsp"/>
<body itemscope itemtype="http://schema.org/WebPage" class="">

<!--  Start of Custom Body Start Analytics -->
<c:out value="${siteSettings.bodyStartAnalytics}" escapeXml="false"/>
<!--  End of Custom Body Start Analytics -->

