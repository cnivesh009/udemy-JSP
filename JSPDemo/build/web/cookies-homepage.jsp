<%-- 
    Document   : cookies-homepage
    Created on : 27/08/2019, 11:41:54 AM
    Author     : Nivesh-GC
--%>

<%@ page import="java.net.URLDecoder" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookies-Homepage</title>
    </head>

    <body>
		<h3> Training Portal</h3>
		<!--read the favourite programming language cookie-->
		<%
			//	the default.. if there is/are no cookie(s)
			String favLang = "Java";

			//	get the cookies from the browser request
			Cookie[] theCookies = request.getCookies();

			//	find the favourite language
			if (theCookies != null) {
				for (Cookie tempCookie : theCookies) {
					if ("myApp.favouriteLanguage".equals(tempCookie.getName())) {
						
						//favLang = tempCookie.getValue();
						// decode cookie data ... handle case of languages with spaces in them
						favLang = URLDecoder.decode(tempCookie.getValue(), "UTF-8");
						break;
					}
				}
			}
		%>
		<!--now show the personalised page... use the favLang variable-->

		<!--show the books for this language-->
		<h4>New books for <%= favLang%></h4>
		<ul>
			<li>Book1</li>
			<li>Book2</li>
			<li>Book3</li>
		</ul>

		<h5>Latest news reports for <%= favLang%></h5>
		<ul>
			<li>Report 1</li>
			<li>Report 2</li>
			<li>Report 3</li>
		</ul>

		<h5>Hot jobs for <%= favLang%></h5>
		<ul>
			<li>Job 1</li>
			<li>Job 2</li>
			<li>Job 3</li>
		</ul>

		<hr>
		<a href="cookies-personalise-form.html"> Personalise this page </a>
    </body>
</html>
