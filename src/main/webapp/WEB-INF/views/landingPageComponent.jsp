<%--
  Created by IntelliJ IDEA.
  User: Nikhil
  Date: 10-03-2018
  Time: 18:13
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
   <!--  <link rel="icon" type="image/png" href="../assets/img/favicon.ico">
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png"> -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title></title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>

    <link href="<spring:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet"/>
    <link href="<spring:url value="/resources/css/paper-kit.css?v=2.1.0"/>" rel="stylesheet"/>
    <link href="<spring:url value="/resources/css/demo.css"/>" rel="stylesheet"/>

    <!--     Fonts and icons     -->
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,300,700' rel='stylesheet' type='text/css'>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href="<spring:url value="/resources/css/nucleo-icons.css"/>" rel="stylesheet">

</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="page-header" data-parallax="true" style="background-image: url('/agriculture/resources/img/sections/david-marcu.jpg');">
    <div class="filter"></div>
    <div class="content-center">
        <div class="container">
            <div class="motto">
                <h1 class="title"><spring:message code="com.grow.agriculture"/></h1>
                <h3 class="description"><spring:message code="com.grow.agriculture.caption"/></h3>
                <br/>
                <a href="<spring:url value="/register"/>" class="btn btn-neutral btn-round"><i
                        class="fa fa-play"></i><spring:message code="com.grow.agriculture.register"/></a>
                <a href="<spring:url value="/login"/>" class="btn btn-outline-neutral btn-round"><spring:message code="com.grow.agriculture.login"/></a>
            </div>
        </div>
    </div>

</div>


</body>
<!-- Core JS Files -->
<script src="<spring:url value="/resources/js/jquery-3.2.1.min.js"/>" type="text/javascript"></script>
<script src="<spring:url value="/resources/js/jquery-ui-1.12.1.custom.min.js"/>" type="text/javascript"></script>
<script src="<spring:url value="/resources/js/popper.js"/>" type="text/javascript"></script>
<script src="<spring:url value="/resources/js/bootstrap.min.js"/>" type="text/javascript"></script>

<!-- Control Center for Paper Kit: parallax effects, scripts for the example pages etc -->
<script src="<spring:url value="/resources/js/paper-kit.js?v=2.1.0"/>"></script>

</html>
