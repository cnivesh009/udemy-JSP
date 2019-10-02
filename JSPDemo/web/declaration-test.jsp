<%-- 
    Document   : declaration-test
    Created on : 25/08/2019, 6:39:00 PM
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
        <h1>Hello World!</h1>
		<%-- Following operator will be used
					<%!	// when writing a scriplet
		--%>
		<%!
			//	JSP declaration
			String makeitLower(String data) {
				return data.toLowerCase();
			}
		%>

		<%--
			no semi-colon in the expression of JSP
		--%>
		Lower case of "HELLO WORLD": <%= makeitLower("HELLO WORLD")%>
    </body>
</html>
