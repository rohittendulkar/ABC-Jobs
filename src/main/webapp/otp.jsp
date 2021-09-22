<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
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
<h1 class="text-center"> An Email containing an otp has been sent to <s:property value="email"/></h1>
<br>
<div class ="col d-flex justify-content-center">
	<div style='z-index: 2;width:25rem' class="card border-primary mb-3 align-items-center">
		<s:form cssClass="well form-horizontal" action="otpverify" method="post" id="contact_form" theme="simple">
		<div class="form-group">
		<br>
				<label class="col-md-16 control-label" >Enter your OTP:</label>
					<div class="col-md-16 inputGroupContainer">
						<s:password cssClass="form-control" placeholder="OTP" name="opt"/>
						</div>
					</div>
		<div class="form-group">
				<label class="col-md-16 control-label"></label>
					<div class="col-md-16">
						<s:submit cssClass="btn btn-warning" value="Verify"/>
					</div>
		</div>
</s:form>
</div>
</body>
</html>