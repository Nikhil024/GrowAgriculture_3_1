<%--
  Created by IntelliJ IDEA.
  User: Nikhil
  Date: 10-03-2018
  Time: 19:47
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>

<jsp:include page="headerComponent.jsp"/>
<title><spring:message code="com.grow.agriculture.register"/></title>
</head>
<body class="full-screen register">
	<jsp:include page="navbar.jsp"/>

    <div class="wrapper">
        <div class="page-header" style="background-image: url(<spring:url value="/resources/img/sections/"/><spring:message code="com.grow.agriculture.register.background.image.name"/>);">
            <div class="filter"></div>
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-7 col-12 ml-auto">
							<div class="info info-horizontal">
								<div class="icon">
									<i class="fa fa-umbrella"></i>
								</div>
								<div class="description">
									<h3> <spring:message code="com.grow.agriculture.register.description1.header"/> </h3>
									<p><spring:message code="com.grow.agriculture.register.description1.description"/></p>
								</div>
							</div>
							<div class="info info-horizontal">
								<div class="icon">
									<i class="fa fa-map-signs"></i>
								</div>
								<div class="description">
									<h3> <spring:message code="com.grow.agriculture.register.description2.header"/> </h3>
									<p><spring:message code="com.grow.agriculture.register.description2.description"/></p>
								</div>
							</div>
							<div class="info info-horizontal">
								<div class="icon">
									<i class="fa fa-user-secret"></i>
								</div>
								<div class="description">
									<h3> <spring:message code="com.grow.agriculture.register.description3.header"/> </h3>
									<p><spring:message code="com.grow.agriculture.register.description3.description"/></p>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-5 col-12 mr-auto">
							<div class="card card-register">
								<h3 class="card-title text-center"><spring:message code="com.grow.agriculture.register"/></h3>
								<!-- <div class="social">
									<button href="#paper-kit" class="btn btn-just-icon btn-facebook"><i class="fa fa-facebook"></i></button>
									<button href="#paper-kit" class="btn btn-just-icon btn-google"><i class="fa fa-google"></i></button>
									<button href="#paper-kit" class="btn btn-just-icon btn-twitter"><i class="fa fa-twitter"></i></button>
								</div> -->

								<div class="division">
									<!-- <div class="line l"></div>
									<span>or</span>
									<div class="line r"></div> -->
								</div>
								<form:form modelAttribute="user" id="userRegister" action="register" class="register-form">
									<form:input path="user.phoneNumber" type="text" id="farmer" class="form-control" placeholder="Farmer PhoneNumber"/>
									<div class="division">
									<div class="line l"></div>
									<span>or</span>
									<div class="line r"></div>
								</div>
									<form:input path="user.phoneNumber" type="text" id="buyer" class="form-control" placeholder="Buyer PhoneNumber"/>
									<div class="division"></div>
									<form:input path="user.password" id="password" type="password" class="form-control" placeholder="Password"/>

									<form:input path="user.confirmPassword" id="confirmPassword" type="password" class="form-control" placeholder="Confirm Password"/>
                                    <div id="confirmPasswordMessage" class="typography-line" style="padding-left:0px;display: none">
                                        <p class="text-danger"><spring:message code="com.grow.agriculture.password.not.equals"/></p>
                                    </div>
                                    <div id="confirmPhoneNumberMessage" class="typography-line" style="padding-left:0px;display: none">
                                        <p class="text-danger"><spring:message code="com.grow.agriculture.phonenumber.not.present"/></p>
                                    </div>
                                   <form:input path="otpValue" id="otp" type="hidden"/>
                                   <form:input path="sessionId" id="sessionID" type="hidden"/>
                                   <form:input path="status" id="status" type="hidden"/>
                                   <form:input path="tries" id="tries" type="hidden"/>
                                   <form:input path="user.userType" id="userType" type="hidden"/>
                                   
                                    <div class="row" id="modals">
                                    <div class="col-md-12">
                                    <button id="otpRegisterPopup" type="button" style="margin-left:80px;background-color: #66615B;border: 0px;" class=" btn btn-primary btn-round" data-toggle="modal" data-target="#otpModal">Register</button>
                            
                            <div class="modal fade" id="otpModal" tabindex="-1" role="dialog" aria-hidden="false">
                                <div class="modal-dialog modal-register" style="width: 325px;">
                                    <div class="modal-content">
                                        <div class="modal-header no-border-header text-center">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                              <span aria-hidden="true">&times;</span>
                                            </button>
                                            <h6 class="text-muted">OTP</h6>
                                            <h3 class="modal-title text-center">Enter OTP</h3>
                                            <p>Please enter OTP received on your phone.</p>
                                        </div>
                                         <p id="otpSuccessSent" class="text-success" style="text-align: -webkit-center;display:none;"><spring:message code="com.grow.agriculture.otp.sent.success.message"/></p>
                                         <p id="otpWarningSent" class="text-warning" style="text-align: -webkit-center;display:none;padding-left: 3px;"><spring:message code="com.grow.agriculture.otp.sent.fail.message"/></p>
                                         <p id="otpDangerSent" class="text-danger" style="text-align: -webkit-center;display:none;padding-left: 3px;"><spring:message code="com.grow.agriculture.otp.wrong.fail.message"/></p>
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <label>Enter the OTP</label>
                                	        	<input id="otpPopup" type="password" value="" placeholder="OTP" class="form-control" />
                                        	</div>
                                        	<br/>
                                            <input id="register" type="submit" style="margin-left: 68px;" value="submit" class="btn btn-outline-default btn-round" name="Register"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                    
									</div>
									</div>
								</form:form>
								<div class="login">
									<p>Already have an account? <a href="<spring:url value="/"/><spring:message code="com.grow.agriculture.login"/>"><spring:message code="com.grow.agriculture.login"/></a>.</p>
								</div>
								
							</div>
						</div>
					</div>
				</div>
            <div class="demo-footer text-center">
                    <h6>&copy; <script>document.write(new Date().getFullYear())</script>, made with <i class="fa fa-heart heart"></i> by <spring:message code="com.grow.agriculture.developer.name"/></h6>
            </div>
        </div>
    </div>

</body>

<jsp:include page="javascriptComponent.jsp"/>
</html>
