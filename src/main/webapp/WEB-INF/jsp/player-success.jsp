<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Success Page</title>
</head>
<body>
	<div align="center">
		<img width=300 height=200 src="<c:url value="/images/SpringMVC.png" />" />
		<h3>Player Registered Successfully</h3>
		<br> 
		Player's First Name: ${player.firstName} 
		<br> 
		Player's Last Name: ${player.lastName}
	</div>
</body>
</html>