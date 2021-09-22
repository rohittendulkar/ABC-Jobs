<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register here</title>
<link rel="stylesheet" href="css/style.css"></link>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/litera/bootstrap.min.css"></link>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="waves.jsp"></jsp:include>
	<jsp:include page="loginheader.jsp"></jsp:include>
	<br>
	<br>
	<div class="col d-flex justify-content-start">
		<div class="container">
		<h1>Update Your Profile</h1>	
	</div>
	
	<div class = "col d-flex justify-content-end">
	<div style='z-index: 2;width:35rem;' class="card border-primary mb-3 align-items-center">
	<s:iterator value="beanList">
		<form class="well form-horizontal" action="updatedetails" method="post" id="contact_form" theme="simple">
			<fieldset>
				<div class="form-group-md-6">
				<div class="container">	
	<s:if test="insert > 0">
	<span><s:property value="msgs" /></span></s:if>
	<s:else>
		<span><s:property value="msgs" /></span>
	</s:else>
	</div>	
			<div class="row">
			<div class="form-group has-danger, col-md-6">
				<label class="col-md-16 control-label" >First Name:</label>
					<div class="col-md-16 inputGroupContainer">
						<input class="form-control" name="first" placeholder="Enter First Name" maxlength="20" value="<s:property value="first"/>"/>
						<%-- <s:textfield class="form-control" name = "first" placeholder="Enter First Name" maxlength="20"/> --%>
					</div>
				</div>
				<div class="form-group has-danger, col-md-6">
				<label class="col-md-16 control-label" >Last Name:</label>
					<div class="col-md-16 inputGroupContainer">
						<input class="form-control" name="last" placeholder="Enter Last Name" maxlength="20" value="<s:property value="last"/>"/>
						<%-- <s:textfield class="form-control" name = "last" placeholder="Enter Last Name" maxlength="20"/> --%>
					</div>
				</div>
				</div>
		</div>
				<div class="form-group">
				<label class="col-md-16 control-label" >E-mail:</label>
					<div class="col-md-16 inputGroupContainer">
						<input class="form-control" type="email" name="email" placeholder="Enter Email ID" maxlength="50" value="<s:property value="email"/>">
						<%-- <s:textfield type="email" class="form-control" name = "email" placeholder="Enter Email ID" maxlength="50"/> --%>
					</div>
				</div>
				<div class = "row">
				<div class="form-group has-danger, col-md-6">
				<label class="col-md-16 control-label" >Username:</label>
					<div class="col-md-16 inputGroupContainer">
						<input disabled="disabled" class="form-control" name="username" placeholder="Enter Username" maxlength="50" value="<s:property value="username"/>">
						<%-- <s:textfield disabled="true" class="form-control" name = "username" placeholder="Enter Username" maxlength="50"/> --%>					
					</div>
				</div>
				
				<div class="form-group has-danger, col-md-6">
				<label class="col-md-16 control-label" >Password:</label>
					<div class="col-md-16 inputGroupContainer">
						<input class="form-control" name="password" placeholder="Enter Password" maxlength="10" value="<s:property value="password"/>">
						<%-- <s:textfield class="form-control" name = "password" placeholder="Enter Password" maxlength="10"/> --%>
					</div>
				</div>
				</div>
				<div class="form-group">
				<label class="col-md-16 control-label" >Where Abouts:</label>
					<div class="col-md-16 inputGroupContainer">
						<input class="form-control" name="whereabouts" placeholder="Where Do You Live" maxlength="50" value="<s:property value="whereabouts"/>">
					</div>
				</div>
				<div class="row">
			<div class="form-group has-danger, col-md-6">
				<label class="col-md-16 control-label" >Age:</label> 
					<div class="col-md-16 inputGroupContainer">
						<input class="form-control" name="age" placeholder="Age" maxlength="2" value="<s:property value="age"/>"/>	
					</div>
				</div>
				<div class="form-group has-danger, col-md-6">
				<label class="col-md-16 control-label" >Working As:</label>
					<div class="col-md-16 inputGroupContainer">
						<input class="form-control" name="job" placeholder="Occupation" maxlength="50" value="<s:property value="job"/>"/>
					</div>
				</div>
				</div>
				<div class="form-group">
				<label class="col-md-16 control-label" >About:</label>
					<div class="col-md-16 inputGroupContainer">
						<input class="form-control" name="about" placeholder="About" maxlength="100" value="<s:property value="about"/>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<br>
						<button type="submit" class="btn btn-warning" value="update">Update</button>
					</div>
				</div>
			</fieldset>
		</form>
		</div>
	</s:iterator>
	</div>
	</div>
</body>
</html>