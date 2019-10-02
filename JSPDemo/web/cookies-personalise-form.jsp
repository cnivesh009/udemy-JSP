<%-- 
    Document   : cookies-personalise-form
    Created on : 27/08/2019, 11:17:04 AM
    Author     : Nivesh-GC
--%>

<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmation</title>
    </head>

	<%
		//	read from data
		String favLang = request.getParameter("favouriteLanguage");
		
		//	encode cookie data ... handle case of languages with spaces in them
		favLang = URLEncoder.encode(favLang, "UTF-8");

		//	create a cookie
		Cookie theCookie = new Cookie("myApp.favouriteLanguage", favLang);

		//	set the life span of cookie
		theCookie.setMaxAge(60);// * 60 * 24 * 365);	//	60x60x24x365 seconds in a year

		//	send cookie to browser			
		response.addCookie(theCookie);

	%>

    <body>

		<p>
			Thanks!! We set your favourite language to: ${param.favouriteLanguage}
		</p>

		<p>
			<a href="cookies-homepage.jsp">Return to homepage</a>
		</p>

    </body>
</html>
