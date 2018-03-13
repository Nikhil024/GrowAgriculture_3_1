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
   

    <title><spring:message code="com.grow.agriculture"/></title>

<jsp:include page="headerComponent.jsp"/>
</head>
<body>

<jsp:include page="navbar.jsp"/>

<div class="page-header" data-parallax="true" style="background-image: url(<spring:url value="/resources/img/sections/david-marcu.jpg"/>);">
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
<jsp:include page="javascriptComponent.jsp"/>

</html>
