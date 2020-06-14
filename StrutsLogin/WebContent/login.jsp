<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<style>
.bs-margin {
	margin: 100px;
}
</style>
<title>Login</title>
</head>
<body>
	<div class="bs-margin">
		<h1 class="text-center">Login</h1>
		<br>
		<html:form action="/login" method="post">
			<div class="form-group row">
				<label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
				<div class="col-sm-6">
					<html:text property="email" styleClass="form-control" />
				</div>
				<div class="col-sm-4">
					<html:errors property="email_error" />
				</div>
			</div>

			<div class="form-group row">
				<label for="inputEmail" class="col-sm-2 col-form-label">Password</label>
				<div class="col-sm-6">
					<html:text property="password" styleClass="form-control" />
				</div>
				<div class="col-sm-4">
					<html:errors property="password_error" />
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-10 offset-sm-2">
					<html:submit value="Login" />
				</div>
			</div>
		</html:form>
	</div>
</body>
</html>