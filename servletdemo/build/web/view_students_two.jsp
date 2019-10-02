<%-- 
    Document   : view_students_two
    Created on : 31/08/2019, 3:16:30 PM
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
		<h2>Student Table Demo</h2>
		<hr>
		<!--
			variable student_list is in MvcDemoServletTwo.java
		-->
		<%=new java.util.Date()%>
		<br/>

		<table border="1">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
			</tr>

			<c:forEach var="temp_student" items="${student_list}">
				<tr>
					<!--
						calls the getter method: temp_student.getFirstName()
					-->
					<td>${temp_student.firstName}</td>
					<td>${temp_student.lastName}</td>
					<td>${temp_student.email}</td>
				</tr>
			</c:forEach>
		</table>
    </body>
</html>
