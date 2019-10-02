<%-- 
    Document   : fun-test
    Created on : 25/08/2019, 8:03:55 PM
    Author     : Nivesh-GC
--%>

<!--
	import java class
-->
<%@page import="com.luv2code.jsp.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World of fun!</h1>

		Let's have some fun: <%= FunUtils.makeItLower("FUN-FUN-FUN")%>
		<br/> <br/>

		Let's have an Expression: 
		<%=com.luv2code.jsp.FunUtils.makeItLower("<%= some java code.."
				+ " This is expression FUN-FUN-FUN")%>
		<br/> <br/>

		Let's have  a Scriptlet with semi-colon:  
		<%
			out.println("<br/>");
			out.println("<" + "%" + "<br/>");
			out.print("\t");
			com.luv2code.jsp.FunUtils.makeItLower("SOME JAVA CODE..");
			out.println("&emsp; &emsp;out.println(\"This is expression FUN-FUN-FUN\");");
			out.println("<br/>" + "%" + ">");
		%>


    </body>
</html>
