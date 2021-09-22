<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register here</title>
</head>
<body>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/litera/bootstrap.min.css"></link>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="waves.jsp"></jsp:include>
	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>
	<div class ="col d-flex justify-content-center">
	<div style='z-index: 2;width:25rem' class="card border-primary mb-3 align-items-center">
		<s:form cssClass="well form-horizontal" action="adminloginprocess" method="post" id="contact_form" theme="simple">
			<fieldset>
				<!-- Form Name -->
				<legend>
					<center>
						<h2>
							<b>Admin Login Form</b>
						</h2>
					</center>
				</legend>
				<br>
				<div class="form-group">
				<label class="col-md-16 control-label" >Username:</label>
					<div class="col-md-16 inputGroupContainer">
						<s:textfield cssClass="form-control" name="username" placeholder="Enter Username" maxlength="50" required="true" />
					</div>
				</div>
				<div class="form-group">
				<label class="col-md-16 control-label" >Password:</label>
					<div class="col-md-16 inputGroupContainer">
						<s:password cssClass="form-control" name="password" placeholder="Enter Password" maxlength="10" required="true" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-16 control-label"></label>
					<div class="col-md-16">
						<br>
						<s:submit cssClass="btn btn-warning" value="login"/>
					</div>
				</div>
			</fieldset>
		</s:form>
	</div>
</body>
</html>