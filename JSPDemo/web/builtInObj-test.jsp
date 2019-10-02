<%-- 
    Document   : builtInObj-test
    Created on : 25/08/2019, 8:51:33 PM
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
        <h3>Built-in objects</h3>
		Request user agent: <%= request.getHeader("User-Agent")%>
		<br/> <br/>
		Request language: <%= request.getLocale()%>
    </body>
</html>
