<%-- 
    Document   : foreach-student-test
    Created on : 28/08/2019, 7:56:08 PM
    Author     : Nivesh-GC
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*,tagdemo.Student" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
	//	just create a sample data... usually provided by MVC
//	List<Student> data = new ArrayList<>(); //---> doesn't worke on glassfish server 
	List<Student> data = new ArrayList<Student>();

	data.add(new Student("John", "Wick", false));
	data.add(new Student("Harsh", "Chandola", true));
	data.add(new Student("Camille", "Siret", true));

	pageContext.setAttribute("myStudents", data);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
		<table border="1">
			<tr> 
				<!--<tr>: table row
					<th>: table header
					<td>: table data
				-->
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gold Customer</th>
			</tr>


			<c:forEach var="tempStudent" items="${myStudents}">

				<tr>
					<td>${tempStudent.firstName}</td>
					<td>${tempStudent.lastName}</td>
					<td>${tempStudent.goldCustomer}</td>					
				</tr>

			</c:forEach>

		</table>
	</body>
</html>
