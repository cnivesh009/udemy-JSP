<%-- 
    Document   : update-student-form
    Created on : 08/09/2019, 2:03:57 PM
    Author     : Nivesh-GC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student</title>
		<!--order of stylesheet matters-->
		<link type="text/css" rel="stylesheet" href="CSS/style.css">
		<link type="text/css" rel="stylesheet" href="CSS/add-student-style.css">
    </head>
    <body>
        <div id="wrapper">
			<div id="header">
				<h2>FooBar University</h2>
			</div>
		</div>
		<div id="container">
			<h3>Update Student</h3>

			<form action="StudentControllerServlet" method="GET">
				<input type="hidden" name="command" value="UPDATE"/>
				<input type="hidden" name="studentId" value="${THE_STUDENT.id}"/>
				<table>
					<tbody>
						<tr>
							<td><label>First name:</label></td>
							<td><input type="text" name="firstName"
									   value="${THE_STUDENT.firstName}"/></td>
							<!--THE_STUDENT is the attribute name in the StudentControllerServlet-->
						</tr>

						<tr>
							<td><label>Last name:</label></td>
							<td><input type="text" name="lastName"
									   value="${THE_STUDENT.lastName}"/></td>
						</tr>

						<tr>
							<td><label>Email:</label></td>
							<td><input type="text" name="email"
									   value="${THE_STUDENT.email}"/></td>
						</tr>

						<tr>
							<td><label></label></td>
							<td><input type="submit" value="Save" class="save"/></td>
						</tr>

					</tbody>
				</table>

			</form>
			<div style="clear: both;"></div>

			<p>
				<a href="StudentControllerServlet">Back to List</a>
			</p>
		</div>
    </body>
</html>
