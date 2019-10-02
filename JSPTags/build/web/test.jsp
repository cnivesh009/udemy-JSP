<%-- 
    Document   : test
    Created on : 27/08/2019, 2:21:35 PM
    Author     : Nivesh-GC
--%>

<!--
	prefix="c" is for core, however, any letter or name can be written
-->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="stuff" value="<%= new java.util.Date()%>" />

		Time on the server ${stuff}
    </body>
</html>
