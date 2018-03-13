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
							<div class="card card-register flipOutY">
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
								<form:form modelAttribute="user" action="register" class="register-form">
									<input path="farmerNumber" type="text" id="farmer" class="form-control" placeholder="Farmer PhoneNumber">
									<div class="division">
									<div class="line l"></div>
									<span>or</span>
									<div class="line r"></div>
								</div>
									<input type="text" id="buyer" class="form-control" placeholder="Buyer PhoneNumber">
									<div class="division"></div>
									<input id="password" type="password" class="form-control" placeholder="Password">

									<input id="confirmPassword" type="password" class="form-control" placeholder="Confirm Password">
                                    <div id="confirmPasswordMessage" class="typography-line" style="padding-left:0px;display: none">
                                        <p class="text-danger"><spring:message code="com.grow.agriculture.password.not.equals"/></p>
                                    </div>
									<button id="register" class="btn btn-block btn-round"><spring:message code="com.grow.agriculture.register"/></button>
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
<script type="text/javascript">

$( "#register" ).click(function() {
	alert("hi");
});


$( "#farmer" ).keyup(function() {
	if(!($( "#farmer" ).val().length > 1)){
		$( "#buyer" ).prop("disabled", false);
	}else{
		$( "#buyer" ).prop("disabled", true);
	}
});
	
$( "#buyer" ).keyup(function() {
	if(!($( "#buyer" ).val().length > 1)){
		$( "#farmer" ).prop("disabled", false);
	}else{
		$( "#farmer" ).prop("disabled", true);
	}
});


$( "#confirmPassword" ).keyup(function() {
    if($( "#password" ).val() == $( "#confirmPassword" ).val()){
        $("#confirmPasswordMessage").hide();
        $("#register").prop("disabled", false);
    }else{
        $("#confirmPasswordMessage").show();
        $("#register").prop("disabled", true);
    }
});


</script>
</html>
