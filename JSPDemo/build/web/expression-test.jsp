<%-- 
    Document   : expressiontest
    Created on : 25/08/2019, 5:08:12 PM
    Author     : Nivesh-GC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Expressions</title>
    </head>
    <body>
        <h1>Hello Nivesh!</h1>
		Lets's do some conversions....	<br/>
		Converting a string Hello World to upper case: <br/>
		
		<%-- Following operator will used:
					<%=	// when writing an expression
				
		--%>
		<%= new String("Hello World").toUpperCase()%>	<br/> <br/>

		Multiply: 25 x 4 = <%= 25 * 4%>	<br/> <br/>

		Conditional statement: Is 79 > 25? <%=  79 > 25 %>  <br/> 
		Is 79 < 25? <%= 79 < 25%> 
</body>
</html>
