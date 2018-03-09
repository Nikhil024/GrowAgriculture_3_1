<%--
  Created by IntelliJ IDEA.
  User: Nikhil
  Date: 10-03-2018
  Time: 18:13
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="icon" type="image/png" href="../assets/img/favicon.ico">
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Paper Kit 2 PRO by Creative Tim</title>

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
<nav class="navbar navbar-expand-lg fixed-top navbar-transparent nav-down" color-on-scroll="500">
    <div class="container">
        <div class="navbar-translate">
            <div class="navbar-header">
                <a class="navbar-brand" href="../presentation.html">Paper Kit 2 PRO</a>
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
                    <a class="nav-link" href="../index.html" data-scroll="true" href="javascript:void(0)">Components</a>
                </li>
                <li class="nav-item dropdown">
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
                </li>
                <li class="nav-item dropdown">
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
                </li>
                <li class="nav-item">
                    <a class="btn btn-round btn-danger" href="https://www.creative-tim.com/product/paper-kit-2-pro">
                        <i class="nc-icon nc-cart-simple"></i> Buy now
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="page-header" data-parallax="true" style="background-image: url('../assets/img/sections/david-marcu.jpg');">
    <div class="filter"></div>
    <div class="content-center">
        <div class="container">
            <div class="motto">
                <h1 class="title">Landing page</h1>
                <h3 class="description">Start designing your landing page here.</h3>
                <br/>
                <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" class="btn btn-neutral btn-round"><i
                        class="fa fa-play"></i>Watch video</a>
                <button type="button" class="btn btn-outline-neutral btn-round">Download</button>
            </div>
        </div>
    </div>

</div>

<div class="wrapper">
    <div class="section text-center landing-section">
        <div class="container">
            <div class="row">
                <div class="col-md-8 ml-auto mr-auto">
                    <h2 class="title">Let's talk product</h2>
                    <h5>This is the paragraph where you can write more details about your product. Keep you user engaged
                        by providing meaningful information. Remember that by this time, the user is curious, otherwise
                        he wouldn't scroll to get here. Add a button if you want the user to see more.</h5>
                    <br/>
                    <a href="#paper-kit" class="btn btn-danger btn-fill btn-round">See Details</a>
                </div>
            </div>
            <br/><br/>
            <div class="row">
                <div class="col-md-3">
                    <div class="info">
                        <div class="icon icon-danger">
                            <i class="nc-icon nc-palette"></i>
                        </div>
                        <div class="description">
                            <h4 class="info-title">Beautiful Gallery</h4>
                            <p class="description">Spend your time generating new ideas. You don't have to think of
                                implementing.</p>
                            <a href="#pkp" class="btn btn-link btn-danger">See more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="info">
                        <div class="icon icon-danger">
                            <i class="nc-icon nc-bulb-63"></i>
                        </div>
                        <div class="description">
                            <h4 class="info-title">New Ideas</h4>
                            <p>Larger, yet dramatically thinner. More powerful, but remarkably power efficient.</p>
                            <a href="#pkp" class="btn btn-link btn-danger">See more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="info">
                        <div class="icon icon-danger">
                            <i class="nc-icon nc-chart-bar-32"></i>
                        </div>
                        <div class="description">
                            <h4 class="info-title">Statistics</h4>
                            <p>Choose from a veriety of many colors resembling sugar paper pastels.</p>
                            <a href="#pkp" class="btn btn-link btn-danger">See more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="info">
                        <div class="icon icon-danger">
                            <i class="nc-icon nc-sun-fog-29"></i>
                        </div>
                        <div class="description">
                            <h4 class="info-title">Delightful design</h4>
                            <p>Find unique and handmade delightful designs related items directly from our sellers.</p>
                            <a href="#pkp" class="btn btn-link btn-danger">See more</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="section section-dark text-center landing-section">
        <div class="container">
            <h2 class="title">Let's talk about us</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="card card-profile card-plain">
                        <div class="card-avatar">
                            <a href="#avatar"><img src="../assets/img/faces/clem-onojeghuo-3.jpg" alt="..."></a>
                        </div>
                        <div class="card-body">
                            <a href="#paper-kit">
                                <div class="author">
                                    <h4 class="card-title">Henry Ford</h4>
                                    <h6 class="card-category text-muted">Product Manager</h6>
                                </div>
                            </a>
                            <p class="card-description text-center">
                                Teamwork is so important that it is virtually impossible for you to reach the heights of
                                your capabilities or make the money that you want without becoming very good at it.
                            </p>
                        </div>
                        <div class="card-footer text-center">
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-twitter"><i
                                    class="fa fa-twitter"></i></a>
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-dribbble"><i
                                    class="fa fa-dribbble"></i></a>
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-linkedin"><i
                                    class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card card-profile card-plain">
                        <div class="card-avatar">
                            <a href="#avatar"><img src="../assets/img/faces/joe-gardner-2.jpg" alt="..."></a>
                        </div>
                        <div class="card-body">
                            <a href="#paper-kit">
                                <div class="author">
                                    <h4 class="card-title">Sophie West</h4>
                                    <h6 class="card-category text-muted">Designer</h6>
                                </div>
                            </a>
                            <p class="card-description text-center">
                                A group becomes a team when each member is sure enough of himself and his contribution
                                to praise the skill of the others. No one can whistle a symphony. It takes an orchestra
                                to play it.
                            </p>
                        </div>
                        <div class="card-footer text-center">
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-twitter"><i
                                    class="fa fa-twitter"></i></a>
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-dribbble"><i
                                    class="fa fa-dribbble"></i></a>
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-linkedin"><i
                                    class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card card-profile card-plain">
                        <div class="card-avatar">
                            <a href="#avatar"><img src="../assets/img/faces/erik-lucatero-2.jpg" alt="..."></a>
                        </div>
                        <div class="card-body">
                            <a href="#paper-kit">
                                <div class="author">
                                    <h4 class="card-title">Robert Orben</h4>
                                    <h6 class="card-category text-muted">Developer</h6>
                                </div>
                            </a>
                            <p class="card-description text-center">
                                The strength of the team is each individual member. The strength of each member is the
                                team. If you can laugh together, you can work together, silence isn?t golden, it?s
                                deadly.
                            </p>
                        </div>
                        <div class="card-footer text-center">
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-twitter"><i
                                    class="fa fa-twitter"></i></a>
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-dribbble"><i
                                    class="fa fa-dribbble"></i></a>
                            <a href="#pablo" class="btn btn-link btn-just-icon btn-linkedin"><i
                                    class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="section landing-section">
        <div class="container">
            <div class="row">
                <div class="col-md-8 ml-auto mr-auto">
                    <h2 class="text-center">Keep in touch?</h2>
                    <form class="contact-form">
                        <div class="row">
                            <div class="col-md-6">
                                <label>Name</label>
                                <input class="form-control" placeholder="Name">
                            </div>
                            <div class="col-md-6">
                                <label>Email</label>
                                <input class="form-control" placeholder="Email">
                            </div>
                        </div>
                        <label>Message</label>
                        <textarea class="form-control" rows="4"
                                  placeholder="Tell us your thoughts and feelings..."></textarea>
                        <div class="row">
                            <div class="col-md-4 offset-md-4">
                                <button class="btn btn-danger btn-lg btn-fill">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="footer section-dark">
    <div class="container">
        <div class="row">
            <nav class="footer-nav">
                <ul>
                    <li><a href="https://www.creative-tim.com">Creative Tim</a></li>
                    <li><a href="http://blog.creative-tim.com">Blog</a></li>
                    <li><a href="https://www.creative-tim.com/license">Licenses</a></li>
                </ul>
            </nav>
            <div class="credits ml-auto">
					<span class="copyright">
						� <script>document.write(new Date().getFullYear())</script>, made with <i
                            class="fa fa-heart heart"></i> by Creative Tim
					</span>
            </div>
        </div>
    </div>
</footer>
</body>

<!-- Core JS Files -->
<script src="<spring:url value="/resources/js/jquery-3.2.1.min.js"/>" type="text/javascript"></script>
<script src="<spring:url value="/resources/js/jquery-ui-1.12.1.custom.min.js"/>" type="text/javascript"></script>
<script src="<spring:url value="/resources/js/popper.js"/>" type="text/javascript"></script>
<script src="<spring:url value="/resources/js/bootstrap.min.js"/>" type="text/javascript"></script>

<!-- Control Center for Paper Kit: parallax effects, scripts for the example pages etc -->
<script src="<spring:url value="/resources/js/paper-kit.js?v=2.1.0"/>"></script>

</html>
