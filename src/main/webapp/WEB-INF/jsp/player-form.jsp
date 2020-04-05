<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<head>
<title>Player Entry Form</title>
</head>
<body>
	<form:form action="processPlayerForm" modelAttribute="player">
		<div align="center">
			<img width=300 height=200 src="<c:url value="/images/SpringMVC.png" />" />
			
			<h4>Player Form</h4>
			
			<a href="playerForm?lang=en">English</a> | <a href="playerForm?lang=fr">Française</a> 
			<br> <br>
			
			<form:label path="firstName">
				<spring:message code="label.firstName" />
			</form:label>
			<form:input path="firstName" />
			<br> <br>
			
			<form:label path="lastName">
				<spring:message code="label.lastName" />
			</form:label>
			<form:input path="lastName" />
			<br> <br>
			
			<form:label path="level">
				<spring:message code="label.level" />
			</form:label>
			<form:select path="level">
				<form:option value="Jr" label="Junior" />
				<form:option value="Sr" label="Senior" />
				<form:option value="S.Sr" label="Super Senior" />
			</form:select>
			<br> <br> 
			
			<form:label path="language">
				<spring:message code="label.mother.tongue" />
			</form:label>
			<form:select path="language">
				<form:options items = "${player.langOptions}"/>
			</form:select>
			<br> <br>

			<form:label path="state">
				<spring:message code="label.state" />
			</form:label>
			<form:select path="state">
				<form:options items="${stateOptions}" />
			</form:select>
			<br> <br>	
			
			<form:label path="gender">
				<spring:message code="label.gender" />
			</form:label>
			<form:radiobutton path="gender" value = "Male" label = "Male" />
			<form:radiobutton path="gender" value = "Female" label = "Female" />
			<br> <br>
			
			<form:label path="hobbies">
				<spring:message code="label.hobbies" />
			</form:label>
			<form:checkbox path="hobbies" value = "Reading" label = "Reading" />
			<form:checkbox path="hobbies" value = "Swimming" label = "Swimming" />
			<form:checkbox path="hobbies" value = "Cycling" label = "Cycling" />
			<br> <br>
			
			<input type="submit" value="Submit" />
		</div>
	</form:form>
</body>
</html>
