<%-- 
    Document   : scriptlet-test
    Created on : 25/08/2019, 5:28:09 PM
    Author     : Nivesh-GC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scriptlet</title>
    </head>
    <body>
        <h1>Hello World of Scriptlet!</h1>
		<h3>Scriptlet: 1 to many lines of Java code</h3>

		Lets begin with "for loop"....... <br/><br/>

		<%-- Following operator will not be there:
					<%=	// when writing a scriplet
				
		--%>
		<% 
			for (int i = 0; i < 5; i++) {
				out.println("<br/>I love JSP..." + (i+1));
			}
		%>
    </body>
</html>
