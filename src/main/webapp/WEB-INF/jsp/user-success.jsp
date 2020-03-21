<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>	
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Success Page</title>
</head>
<body>
	<h3>User Registered Successfully</h3>
	<br>  
	 User's First Name: ${param.firstName} 
	 <br>
	 User's Last Name: ${param.lastName} 
	 <br> 
	 User's Full Name: ${fullName}
</body>
</html>