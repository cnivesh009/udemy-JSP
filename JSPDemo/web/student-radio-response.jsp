<%-- 
    Document   : student-radio-response
    Created on : 26/08/2019, 1:00:14 PM
    Author     : Nivesh-GC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Confirmation</title>
    </head>
    <body>
        <p>The student is confirmed: ${param.firstName} ${param.lastName}</p>
		
		<p>The student's favourite language: ${param.favouriteLanguage}</p>
    </body>
</html>
