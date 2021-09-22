<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Users</title>
<link rel="stylesheet" href="css/styles.css">
<link href="https://fonts.googleapis.com/css?family=Squada+One&display=swap" rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/litera/bootstrap.min.css"></link>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="waves.jsp"></jsp:include>
	<jsp:include page="loginheader.jsp"></jsp:include>
	<br>
	<div class="container">
	<s:if test="noData==true">
		<table class="table">
		<thead>
		<tr>
		<th scope="col">ID</th>
		<th scope="col">First Name</th>
		<th scope="col">Last Name</th>
		<th scope="col">Email</th>
		<th scope="col">Username</th>
		<th scope="col">Password</th>
		<th scope="col">Make Changes</th>
		</tr>
		</thead>
		<s:iterator value="beanList">
					<tr>
						<td scope="col"><s:property value="id" /></td>
						<td scope="col"><s:property value="first" /></td>
						<td scope="col"><s:property value="last" /></td>
						<td scope="col"><s:property value="email" /></td>
						<td scope="col"><s:property value="username" /></td>
						<td scope="col"><s:property value="password" /></td>
						<td scope="col">
							<a href="updatedetails.action?submitType=updatedata&username=<s:property value="username"/>">
								<button class="btn btn-success">Update</button>
							</a>
						</td>
					</tr>
				</s:iterator>
				</table>
		</s:if>
		<s:else>
			<div style="color: red;">No Data Found.</div>
		</s:else>
	</div>
</body>
</html>