<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Player Entry Form</title>
</head>
<body>
	<form:form action="processPlayerForm" modelAttribute="player">
		<div align="center">
			<img width=300 height=200 src="<c:url value="/images/SpringMVC.png" />" />
			<h4>Player Form</h4>
			<form:label path="firstName">First Name :</form:label>
			<form:input path="firstName" />
			<br> <br>
			<form:label path="lastName">Last Name :</form:label>
			<form:input path="lastName" />
			<br> <br> <input type="submit" value="Submit" />
		</div>
	</form:form>
</body>
</html>
