<%--
  Created by IntelliJ IDEA.
  User: Nikhil
  Date: 10-03-2018
  Time: 19:49
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<nav class="navbar  navbar-transparent    navbar-absolute  navbar-expand-lg " color-on-scroll="100" id="sectionsNav">
    <div class="container">
        <div class="navbar-translate">
            <a class="navbar-brand" href="<spring:url value="/"/>"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="dropdown nav-item">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                        <i class="material-icons">apps</i> Login
                    </a>
                    <div class="dropdown-menu dropdown-with-icons">
                        <a href="<spring:url value="/login/farmerLogin"/>" class="dropdown-item">
                            <i class="material-icons">layers</i> Farmer Login
                        </a>
                        <a href="<spring:url value="/login/buyerLogin"/>" class="dropdown-item">
                            <i class="material-icons">content_paste</i> Buyer Login
                        </a>
                    </div>
                </li>
                <li class="dropdown nav-item">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                        <i class="material-icons">view_day</i> Register
                    </a>
                    <div class="dropdown-menu dropdown-with-icons">
                        <a href="<spring:url value="/register/farmerRegister"/>" class="dropdown-item">
                            <i class="material-icons">dns</i> Farmer Register
                        </a>
                        <a href="<spring:url value="/register"/>" class="dropdown-item">
                            <i class="material-icons">build</i> Buyer Register
                        </a>
                    </div>
                </li>
                <!-- <li class="dropdown nav-item">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                        <i class="material-icons">view_carousel</i> Examples
                    </a>
                    <div class="dropdown-menu dropdown-with-icons">
                        <a href="../examples/about-us.html" class="dropdown-item">
                            <i class="material-icons">account_balance</i> About Us
                        </a>
                        <a href="../examples/blog-post.html" class="dropdown-item">
                            <i class="material-icons">art_track</i> Blog Post
                        </a>
                        <a href="../examples/blog-posts.html" class="dropdown-item">
                            <i class="material-icons">view_quilt</i> Blog Posts
                        </a>
                        <a href="../examples/contact-us.html" class="dropdown-item">
                            <i class="material-icons">location_on</i> Contact Us
                        </a>
                        <a href="../examples/landing-page.html" class="dropdown-item">
                            <i class="material-icons">view_day</i> Landing Page
                        </a>
                        <a href="../examples/login-page.html" class="dropdown-item">
                            <i class="material-icons">fingerprint</i> Login Page
                        </a>
                        <a href="../examples/pricing.html" class="dropdown-item">
                            <i class="material-icons">attach_money</i> Pricing Page
                        </a>
                        <a href="../examples/ecommerce.html" class="dropdown-item">
                            <i class="material-icons">store</i> Ecommerce Page
                        </a>
                        <a href="../examples/product-page.html" class="dropdown-item">
                            <i class="material-icons">shopping_cart</i> Product Page
                        </a>
                        <a href="../examples/profile-page.html" class="dropdown-item">
                            <i class="material-icons">account_circle</i> Profile Page
                        </a>
                        <a href="../examples/signup-page.html" class="dropdown-item">
                            <i class="material-icons">person_add</i> Signup Page
                        </a>
                    </div>
                </li> -->
                <li class="button-container nav-item">
                    <a href="http://www.creative-tim.com/buy/material-kit-pro?ref=presentation" target="_blank" class="btn  btn-primary   btn-round btn-block">
                        <i class="material-icons">shopping_cart</i> Buy Now
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>