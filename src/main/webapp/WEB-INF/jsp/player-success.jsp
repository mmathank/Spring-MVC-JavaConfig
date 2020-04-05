<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
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
		<br> <label> Player's State: </label> ${player.state}
		<br> <label> Player's Gender: </label> ${player.gender}
		<br> <label> Player's Hobbies: </label> 
			<ul>
			<c:forEach var = "hobby" items = "${player.hobbies}" >
			<li> ${hobby} </li>
			</c:forEach>
			</ul>
		
	</div>
</body>
</html>