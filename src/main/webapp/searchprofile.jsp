<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Profile</title>
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
		<s:iterator value="beanList">
				<div class = "card shadow mt--300">
				<div class="px-4">
            <div class="row justify-content-center">
              <div class="col-lg-3 order-lg-2">
                <div class="card-profile-image">
                <br>
                  <a href="javascript:;">
                    <img src="css/profile_unsplash_ben_sweet.jpg" class="img-thumbnail rounded-circle">
                  </a>
                </div>
              </div>
              <div class="col-lg-4 order-lg-3 text-lg-right align-self-lg-center">
                <div class="card-profile-actions py-4 mt-lg-0">
                  <a href="#" class="btn btn-md btn-default float-right">Message</a>
                </div>
              </div>
              <div class="col-lg-4 order-lg-1">
              </div>
            </div>
            <div class="text-center mt-5">
              <h3><s:property value="first"/> <s:property value="last"/><span class="font-weight-light">, <s:property value ="age"/></span></h3>
              <div class="h6 font-weight-300"><i class="ni location_pin mr-2"></i>From, <s:property value="whereabouts"/></div>
              <div class="h6 mt-4"><i class="ni business_briefcase-24 mr-2"></i><s:property value = "job"/></div>
              <div><i class="ni education_hat mr-2"></i>University of Computer Science</div>
            </div>
            <div class="mt-5 py-5 border-top text-center">
              <div class="row justify-content-center">
                <div class="col-lg-9">
                  <p><s:property value ="about"/></p>
                 
                </div>
              </div>
            </div>
          </div>
          </div>
          </s:iterator>
		</s:if>
		<s:else>
			<div style="color: red;">No Data Found.</div>
		</s:else>
	</div>
</body>
</html>
		