<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/litera/bootstrap.min.css"></link>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="waves.jsp"></jsp:include>
<jsp:include page="loginheader.jsp"></jsp:include>
<br>
<div>
<s:if test="noData==true">
<s:iterator value="beanList">
<a href = "searchProfile?username=<s:property value="username"/>">
<div>
<ul class="list-group">
<li class="list-group-item">
  <h4 class="list-group-item-heading">
  <s:property value="first"/>
  <s:property value="last"/>
  </h4>
  <s:property value="username"/>
  <br>
  <s:property value="email"/>
  
  </li>
</ul>
</div>
</a>
</s:iterator>
</s:if>
<s:else>
<div style="color: red;">No Data Found.</div>
</s:else>
<s:if test="insert>0">
<span style="color: red;"><s:property value="msgs" /></span>
</s:if>
<s:else>
<span style="color: red;"><s:property value="msgs" /></span>
</s:else>
</div>
</body>
</html>