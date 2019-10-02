<%-- 
    Document   : i18-messages-test
    Created on : 29/08/2019, 8:26:07 PM
    Author     : Nivesh-GC
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:set var="theLocale"
	   value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
	   scope="session"/>

<fmt:setLocale value="${theLocale}"/>
<fmt:setBundle basename="tagdemo.i18n.resources.mylabels"/>

<%--
	<fmt:bundle basename="tagdemo.i18n.resources.mylabels"/>
	
	JSP will append locale:
	mylabels_<theLocale>.properties
	example: mylabels_es_ES.properties
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>

		<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>
		|

		<a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a>
		|

		<a href="i18n-messages-test.jsp?theLocale=en_GB">English (GB)</a>
		|

		<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>
		|

		<a href="i18n-messages-test.jsp?theLocale=fr_FR">French (FR)</a>

		<hr>

		<h4><fmt:message key="label.greeting"/> </h4>

		<fmt:message key="label.firstname"/> <i>Nivesh</i> <br/>

		<fmt:message key="label.lastname"/> <i>Chandola</i> <br/>

		<fmt:message key="label.welcome"/> <br/>

		<hr>

		Selected locale: ${theLocale}
	</body>
</html>





