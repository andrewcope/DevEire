<%@include file="/WEB-INF/common/taglibs.jsp" %>

<%@page import="com.deveire.utils.DeveireUtils"%>

<%
    pageContext.setAttribute("deveireSiteSettings", DeveireUtils.getSiteSettings());
%>

<c:set var="siteSettings" value="${deveireSiteSettings}" scope="page" />

<head prefix="og: http://ogp.me/ns#">
    <!--[if IE 8 ]><html class="ie8"><![endif]-->
    <!--[if IE 9 ]><html class="ie9"><![endif]-->
    <meta charset="utf-8">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <%-- setting initial-scale=1 was causing scaling issues on ipad/iphone --%>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <%-- prevent mobile safari from auto-linking number strings it thinks are phone numbers;
    http://stackoverflow.com/questions/226131/how-to-disable-phone-number-linking-in-mobile-safari --%>
    <meta name="format-detection" content="telephone=no">

    <title><c:out value="${mainContent.title}"/></title>
    <meta property="og:title" content="<c:out value="${mainContent.title}" />" />
    <%-- CSS/Less --%>
    <!--    <link rel="stylesheet" type="text/css" href="/assets/styles/css/webfonts.css"/>
        <link rel="stylesheet" type="text/css" href="/assets/styles/css/font-awesome.css">
        <link rel="stylesheet" href="/assets/styles/css/psd-sharebar.css"/>-->
    <!--[if IE]>
    <link rel="stylesheet" type="text/css" href="/assets/styles/css/font-awesome-ie7.min.css">
    <script src="${cms:resource('/assets/js/placeholder.js')}"></script>
    <![endif]-->


    <!-- CSS / LESS -->
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic' rel='stylesheet' type='text/css'>
    <!--<link rel="stylesheet" type="text/css" href="${cms:resource('/assets/less/main.min.css')}">--> 
    <link rel="stylesheet/less" type="text/css" href="${cms:resource('/assets/less/main.less')}"> 
    <script src="${cms:resource('/assets/js/bower/less.js')}" type="text/javascript"></script> 
    
     <!-- JAVASCRIPT / REQUIRE JS -->
    <script data-main="/assets/js/main.js" src="/assets/js/require.js"></script>
    
    <!--  Start of Custom Head Analytics -->
    <c:out value="${siteSettings.headAnalytics}" escapeXml="false"/>
    <!--  End of Custom Head Analytics -->

</head>