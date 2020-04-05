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
		<img width=300 height=200
			src="<c:url value="/images/SpringMVC.png" />" />
		<h3>Player Registered Successfully</h3>
		<br> <label> Player's First Name: </label> ${player.firstName}
		<br> <label> Player's Last Name: </label> ${player.lastName}
		<br> <label> Player's Level: </label> ${player.level}
		<br> <label> Player's Mother Tongue: </label> ${player.language}
		<br> <label> Player's Gender: </label> ${player.gender}
	</div>
</body>
</html>