<%-- 
    Document   : split-join-test
    Created on : 29/08/2019, 5:58:42 PM
    Author     : Nivesh-GC
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>function-test</title>
    </head>

    <body>
        <h1>Function-test</h1>
		<c:set var="data" value="Singapore,Canada,Australia, UK, Netherlands, Belgium" />

		<c:set var="CitiesArr" value="${fn:split(data,',')}"/>
		<br/> <br/>

		<h3>Split Demo</h3>
		<u>Cities without <b>","</b>:</u>
		<br/>
		<c:forEach var="tempData" items="${CitiesArr}" >
			${tempData} <br>
		</c:forEach>
		<br>

		<h3>Join demo</h3>
		<c:set var="fun" value="${fn:join(CitiesArr,'*')}"/>
		<b>Result of joining:</b> ${fun}
	</body>
</html>

