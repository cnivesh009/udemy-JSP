<%-- 
    Document   : foreach-simple-test
    Created on : 27/08/2019, 3:49:38 PM
    Author     : Nivesh-GC
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
	//	sample data
	String[] cities = {"Delhi", "Dehradun", "Haldwani", "Mumbai"};
	pageContext.setAttribute("myCities", cities);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
		<p>
			<d:forEach var="tempCity" items="${myCities}">
				${tempCity} <br/>
			</d:forEach>
		</p>
    </body>
</html>
