<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Form</title>
</head>
<body>
<%-- 	<form action="registerUser" method="GET">
		Enter Your First Name: <input type="text" name="firstName"> <br>
		Enter Your Last Name: <input type="text" name="lastName"> <br>
		<input type="submit" />
	</form> 
	<br>
	<hr>--%>
	<h4>User Form with Model</h4>
	<form action="registerUserModelTwo" method="GET">
		Enter Your First Name: <input type="text" name="firstName"> <br>
		Enter Your Last Name: <input type="text" name="lastName"> <br>
		<input type="submit" />
	</form>

</body>
</html>