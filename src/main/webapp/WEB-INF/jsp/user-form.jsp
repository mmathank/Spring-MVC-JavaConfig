<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<form action="registerUserModel" method="GET">
		Enter Your First Name: <input type="text" name="firstName"> <br>
		Enter Your Last Name: <input type="text" name="lastName"> <br>
		<input type="submit" />
	</form>

</body>
</html>