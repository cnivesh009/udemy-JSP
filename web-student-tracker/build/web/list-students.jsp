<%-- 
    Document   : list-students
    Created on : 05/09/2019, 4:32:20 PM
    Author     : Nivesh-GC
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*, luv2code.com.web.jdbc.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Tracker App</title>
		<link type="text/css" rel="stylesheet" href="CSS/style.css"/>
    </head>
	<%--
	<%
		//	get the students from the request object (sent by servlet)
		List<Student> theStudents = (List<Student>) request.getAttribute("STUDENT_LIST");
	%>
	--%>

    <body>

		<div id="wrapper">
			<div id="header">
				<h2>FooBar University</h2>
			</div>			
		</div>

		<div id="container">
			<div id="content">
				<!--put new button: add student-->
				<input type="button" value="Add Student"
					   onclick="window.location.href = 'add-student-form.jsp'; return false;" 
					   class="add-student-button"
					   />

				<!--  add a search box -->
				<form action="StudentControllerServlet" method="GET">

					<input type="hidden" name="command" value="SEARCH" />

					Search student: <input type="text" name="theSearchName" />

					<input type="submit" value="Search" class="add-student-button" />

				</form>

				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
					<%--
					Replace the following code with the JSTL code										
						<% for (Student tempStudent : theStudents) {%>
					--%>
					<c:forEach var="tempStudent" items="${STUDENT_LIST}">
						<tr>
							<!--set up a link for each student-->
							<c:url var="tempLink" value="StudentControllerServlet">
								<c:param name="command" value="LOAD" />
								<c:param name="studentId" value="${tempStudent.id}"/>
							</c:url>

							<!--setup a link to delete a student-->
							<c:url var="deleteLink" value="StudentControllerServlet">
								<c:param name="command" value="DELETE" />
								<c:param name="studentId" value="${tempStudent.id}"/>
							</c:url>

							<!--getFirstName() is called-->
							<td> ${tempStudent.firstName} </td>

							<!--getlastName() is called-->
							<td> ${tempStudent.lastName} </td>

							<!--getEmail() is called-->
							<td> ${tempStudent.email} </td> 
							<td> <a href="${tempLink}">Update</a>
								| 
								<a href="${deleteLink}"
								   onclick="if (!(confirm('Do you wish to delete this student?')))
											   return false">
									Delete</a> </td> 
							<!--onclick is javascript code-->
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
    </body>
</html>
