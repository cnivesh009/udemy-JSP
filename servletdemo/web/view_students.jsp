<%-- 
    Document   : view_student
    Created on : 31/08/2019, 2:02:54 PM
    Author     : Nivesh-GC
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Nivesh!</h1>
		<hr>
		<!--
			variable student_list is in MvcDemoServlet.java
		-->
		<%=new java.util.Date()%>
		<br/>
		<c:forEach var="temp_student" items="${student_list}">
			${temp_student} <br/>
		</c:forEach>
    </body>
</html>
