<%--
  Created by IntelliJ IDEA.
  User: Nikhil
  Date: 10-03-2018
  Time: 19:49
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<nav class="navbar navbar-expand-lg fixed-top navbar-transparent nav-down" color-on-scroll="500">
    <div class="container">
        <div class="navbar-translate">
            <div class="navbar-header">
                <a class="navbar-brand" href="<spring:url value="/"/>"><spring:message code="com.grow.agriculture"/></a>
            </div>
            <button class="navbar-toggler navbar-burger" type="button" data-toggle="collapse"
                    data-target="#navbarToggler" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-bar"></span>
                <span class="navbar-toggler-bar"></span>
                <span class="navbar-toggler-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="<spring:url value="/login"/>" data-scroll="true" href="javascript:void(0)"><spring:message code="com.grow.agriculture.login"/></a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="<spring:url value="/register"/>" data-scroll="true" href="javascript:void(0)"><spring:message code="com.grow.agriculture.register"/></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<spring:url value="/forgotPassword"/>" data-scroll="true" href="javascript:void(0)"><spring:message code="com.grow.agriculture.forgotpassword"/></a>
                </li>
               <!--  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown">Sections</a>
                    <ul class="dropdown-menu dropdown-menu-right dropdown-danger">
                        <a class="dropdown-item" href="../sections.html#headers"><i class="nc-icon nc-tile-56"></i>&nbsp;
                            Headers</a>
                        <a class="dropdown-item" href="../sections.html#features"><i class="nc-icon nc-settings"></i>&nbsp;
                            Features</a>
                        <a class="dropdown-item" href="../sections.html#blogs"><i class="nc-icon nc-bullet-list-67"></i>&nbsp;
                            Blogs</a>
                        <a class="dropdown-item" href="../sections.html#teams"><i class="nc-icon nc-single-02"></i>&nbsp;
                            Teams</a>
                        <a class="dropdown-item" href="../sections.html#projects"><i class="nc-icon nc-calendar-60"></i>&nbsp;
                            Projects</a>
                        <a class="dropdown-item" href="../sections.html#pricing"><i class="nc-icon nc-money-coins"></i>&nbsp;
                            Pricing</a>
                        <a class="dropdown-item" href="../sections.html#testimonials"><i class="nc-icon nc-badge"></i>&nbsp;
                            Testimonials</a>
                        <a class="dropdown-item" href="../sections.html#contact-us"><i class="nc-icon nc-mobile"></i>&nbsp;
                            Contacts</a>
                    </ul>
                </li> -->
               <!--  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="javascript:void(0)">Examples</a>
                    <ul class="dropdown-menu dropdown-menu-right dropdown-danger">
                        <a class="dropdown-item" href="about-us.html"><i class="nc-icon nc-bank"></i>&nbsp; About Us</a>
                        <a class="dropdown-item" href="add-product.html"><i class="nc-icon nc-basket"></i>&nbsp; Add
                            Product</a>
                        <a class="dropdown-item" href="blog-post.html"><i class="nc-icon nc-badge"></i>&nbsp; Blog Post</a>
                        <a class="dropdown-item" href="blog-posts.html"><i class="nc-icon nc-bullet-list-67"></i>&nbsp;
                            Blog Posts</a>
                        <a class="dropdown-item" href="contact-us.html"><i class="nc-icon nc-mobile"></i>&nbsp; Contact
                            Us</a>
                        <a class="dropdown-item" href="discover.html"><i class="nc-icon nc-world-2"></i>&nbsp; Discover</a>
                        <a class="dropdown-item" href="ecommerce.html"><i class="nc-icon nc-send"></i>&nbsp;
                            Ecommerce</a>
                        <a class="dropdown-item" href="landing.html"><i class="nc-icon nc-spaceship"></i>&nbsp; Landing</a>
                        <a class="dropdown-item" href="login.html"><i class="nc-icon nc-lock-circle-open"></i>&nbsp;
                            Login</a>
                        <a class="dropdown-item" href="product-page.html"><i class="nc-icon nc-album-2"></i>&nbsp;
                            Product Page</a>
                        <a class="dropdown-item" href="profile.html"><i class="nc-icon nc-single-02"></i>&nbsp; Profile</a>
                        <a class="dropdown-item" href="register.html"><i class="nc-icon nc-bookmark-2"></i>&nbsp;
                            Register</a>
                        <a class="dropdown-item" href="search-with-sidebar.html"><i class="nc-icon nc-zoom-split"></i>&nbsp;
                            Search</a>
                        <a class="dropdown-item" href="settings.html"><i class="nc-icon nc-settings-gear-65"></i>&nbsp;
                            Settings</a>
                        <a class="dropdown-item" href="twitter-redesign.html"><i class="nc-icon nc-tie-bow"></i>&nbsp;
                            Twitter</a>
                    </ul>
                </li> -->
               <!--  <li class="nav-item">
                    <a class="btn btn-round btn-danger" href="https://www.creative-tim.com/product/paper-kit-2-pro">
                        <i class="nc-icon nc-cart-simple"></i> Buy now
                    </a>
                </li> -->
            </ul>
        </div>
    </div>
</nav>