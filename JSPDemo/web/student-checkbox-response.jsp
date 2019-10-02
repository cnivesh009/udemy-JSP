<%-- 
    Document   : student-checkbox-response
    Created on : 26/08/2019, 1:25:56 PM
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
        <p>The student is confirmed: ${param.firstName} ${param.lastName}
		</p>

		<br/> <br/>

		The student's favourite language:
		<!--unordered list: displays favourite languages
		-->
		<ul>
			<%
				String[] langs = request.getParameterValues("favouriteLanguage");
				//	null pointer exception; when user doesn't select the checkbox
				if (langs != null) {
					for (String tempLang : langs) {
						out.println("<li>" + tempLang + "</li>");
					}
				}
			%>
		</ul>

	</body>
</html>
