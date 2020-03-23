<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Player Entry Form</title>
</head>
<body>
	<form:form action="processPlayerForm" modelAttribute="player">
		<div align="center">
			<img width=300 height=200
				src="<c:url value="/images/SpringMVC.png" />" />
			<h4>Player Form</h4>
			<a href="playerForm?lang=en">English</a> | <a href="playerForm?lang=fr">Française</a> <br> <br>
			<form:label path="firstName">
				<spring:message code="label.firstName" />
			</form:label>
			<form:input path="firstName" />
			<br> <br>
			<form:label path="lastName">
				<spring:message code="label.lastName" />
			</form:label>
			<form:input path="lastName" />
			<br> <br> <input type="submit" value="Submit" />
		</div>
	</form:form>
</body>
</html>
