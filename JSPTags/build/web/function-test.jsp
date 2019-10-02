<%--
	Document   : function-test
    Created on : 29/08/2019, 5:28:22 PM
    Author     : Nivesh-GC
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>function-test</title>
    </head>

    <body>
        <h1>Function-test</h1>
		<c:set var="data" value="luv2code" />
		Length of the string <b>"${data}"</b>: ${fn:length(data)}
		<br> <br>
		
		Upper case version of the string <b>"${data}"</b>: ${fn:toUpperCase(data)}
		<br> <br>
		
		Does the string <b>"${data}"</b> starts with <b>"luv"</b>?: ${fn:startsWith(data, luv)} 
    </body>
</html>
