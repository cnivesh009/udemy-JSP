<%-- 
    Document   : test-redirect
    Created on : 31/08/2019, 12:25:51 PM
    Author     : Nivesh-GC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Nivesh!</h1>
		<!--		
			THE PAGE REDIRECTS TO Hello_WorldServlet.java; Hello Nivesh ON THIS PAGE
			IS NOT VIEWED	
		-->
		<%
			response.sendRedirect(request.getContextPath() + "/hello");
		%>
    </body>
</html>
