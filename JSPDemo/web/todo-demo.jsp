<%-- 
    Document   : todo-demo
    Created on : 26/08/2019, 8:14:46 PM
    Author     : Nivesh-GC
--%>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

		<!--1. create html form-->
		<form action="todo-demo.jsp">
			Add new item: <input type="text" name="theItem"/>
			<input type="submit" value="Submit"/>
		</form>

		<!--2. add new item "To Do" list-->
		<%
			//	get the TO DO items from the session
			List<String> items = (List<String>) session.getAttribute("myToDoList");

			//	if the To Do item doesn't exist, then create one
			if (items == null) {
				items = new ArrayList<String>();

				//	session.setAttribute(String_name, Object_value);
				session.setAttribute("myToDoList", items);
			}

			//	see if there is a form data to add
			String theItem = request.getParameter("theItem");
			if ((theItem != null) && (!theItem.trim().equals(""))) {
				items.add(theItem);
				response.sendRedirect("todo-demo.jsp");
			}

		%>
		
		<!--3. display all "To Do" session-->
			<hr>
			<b>To Do List:</b> <br/>
			<ol>
				<%	
					for (String temp : items) {
						out.println("<li>" + temp + "</li>");
					}
				%>
			</ol>
    </body>
</html>
