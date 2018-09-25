<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Testing the version2</h2>
<p align="center">
<h3>Please enter two numbers below and I'll add them for you:</h3>
<form action="calculator" method="get">
<input type="text" name="t1"><br>
<input type="text" name="t2"><br>
<input type="submit" value="Click" alt="Click here to know the sum of above numbers">
</form>
</p>
</body>
</html>