<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register here</title>
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
	<div class="col d-flex justify-content-start">
		<div class="container">
		<h1>WHAT BETTER WAY TO START YOUR CAREER THAN WITH ABC JOBS</h1>
		<h3 class="lead">Give us a go..</h3>
		</div>
	<div class="col d-flex justify-content-end">
	<div style="z-index: 2;width:35rem; " class="card border-primary mb-3 align-items-center" >
		<s:form cssClass="well form-horizontal" action="register.action" method="post" id="contact_form" theme="simple">
			<fieldset>
				<div class="form-group-md-6">
				<div class="container">	
	<s:if test="ctr>0">
	<div style="color: green;"><s:property value="msg" /></div>
	</s:if>
	<s:else>
		<div style="color: red;"><s:property value="msg" /></div>
	</s:else>
	</div>
	<br>		
		<div class="row">
			<div class="form-group has-danger, col-md-6">
				<label class="col-md-16 control-label" >First Name:</label>
					<div class="col-md-16 inputGroupContainer">
						<s:textfield cssClass="form-control" name="first" placeholder="Enter First Name" maxlength="20" />	
					</div>
				</div>
				<div class="form-group has-danger, col-md-6">
				<label class="col-md-16 control-label" >Last Name:</label>
					<div class="col-md-16 inputGroupContainer">
						<s:textfield cssClass="form-control" name="last" placeholder="Enter Last Name" maxlength="20" />
					</div>
				</div>
				</div>
			</div>
				<div class="form-group">
				<label class="col-md-16 control-label" >E-mail:</label>
					<div class="col-md-16 inputGroupContainer">
						<s:textfield cssClass="form-control" type="email" name="email" placeholder="Enter Email ID" maxlength="50" />
					</div>
					</div>
					<div class="row">
			<div class="form-group has-danger, col-md-6">
				<label class="col-md-16 control-label" >Age:</label>
					<div class="col-md-16 inputGroupContainer">
						<s:textfield cssClass="form-control" name="age" placeholder="Age" maxlength="2" />	
					</div>
				</div>
				<div class="form-group has-danger, col-md-6">
				<label class="col-md-16 control-label" >Working As:</label>
					<div class="col-md-16 inputGroupContainer">
						<s:select list="{'Software Developer', 'Team Leader', 'UI Designer'}" cssClass="form-control" name="job" placeholder="Occupation" />
					</div>
				</div>
				</div>
				<div class="form-group">
				<label class="col-md-16 control-label" >Where Abouts:</label>
					<div class="col-md-16 inputGroupContainer">
						<s:textfield cssClass="form-control" name="whereabouts" placeholder="Where do you live?" maxlength="50" />
					</div>
				</div>
				<div class="form-group">
				<label class="col-md-16 control-label" >Username:</label>
					<div class="col-md-16 inputGroupContainer">
						<s:textfield cssClass="form-control" name="username" placeholder="Enter Username" maxlength="50" />
					</div>
				</div>
				<div class="form-group">
				<label class="col-md-16 control-label" >Password:</label>
					<div class="col-md-16 inputGroupContainer">
						<s:password cssClass="form-control" name="password" placeholder="Enter Password" maxlength="10" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-16 control-label"></label>
					<div class="col-md-16">
						<br>
						<s:submit cssClass="btn btn-warning" value="Register"/>
					</div>
				</div>
			</fieldset>
		</s:form>
	</div>
	</div>
</div>
</body>
</html>