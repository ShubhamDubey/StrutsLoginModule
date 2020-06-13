<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h1>Login</h1>
	<html:form action="login" method="post">
		<br> Email <html:text property="email" />
		<html:errors property="email_error" />
		<br> Password <html:password property="password" />
		<html:errors property="password_error" />
		<br>
		<html:submit value="Login" />

	</html:form>
</body>
</html>