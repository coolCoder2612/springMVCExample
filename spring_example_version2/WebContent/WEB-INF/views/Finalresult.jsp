<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FinalResult</title>
</head>
<body>
<h3>Message passed on from controller : ${message}</h3><br>
<%if(request.getAttribute("value")!=null){ %>
The numbers add up to : ${value}
<%}else{ %>
<font color="Red">${error_message}</font>
<%} %>
<br>

<p>
<c:choose>
	<c:when test="${value!=null}">
	Message from jstl : The numbers add up to : ${value}
	</c:when>
	<c:otherwise>
	Message from jstl : <font color="Red">${error_message}</font>
	</c:otherwise>
</c:choose>
</p>

<a href="/spring_example_version2/">Click to go back</a>
</body>
</html>