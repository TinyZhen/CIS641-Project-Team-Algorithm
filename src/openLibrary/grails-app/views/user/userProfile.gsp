<%--
  Created by IntelliJ IDEA.
  User: Astha
  Date: 12/10/2022
  Time: 3:17 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My profile</title>

    <!-- ** Basic Page Needs ** -->
    <meta charset="utf-8"/>
    <title>Open Library Search Engine</title>

    <!-- favicon -->
    <asset:link href="tab-icon.png" rel="shortcut icon" type="image/x-icon"/>

    <!--Style sheets-->
    <asset:stylesheet src="bootstrap.min.css"/>

    <asset:stylesheet src="bootstrap-slider.css"/>
    <asset:stylesheet src="font-awesome/css/font-awesome.min.css"/>
    <asset:stylesheet src="slick.css"/>
    <asset:stylesheet src="slick-theme.css"/>
    <asset:stylesheet src="nice-select.css"/>

    <!--Custom stylesheet-->
    <asset:stylesheet src="style.css"/>

    <!-- Essential Scripts -->
    <asset:javascript src="jquery-3.3.1.min.js"/>
    <asset:javascript src="popper.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="bootstrap-slider.js"/>
    <asset:javascript src="tether.min.js"/>
    <asset:javascript src="jquery.raty-fa.js"/>
    <asset:javascript src="slick.min.js"/>
    <asset:javascript src="jquery.nice-select.min.js"/>

    <asset:javascript src="script.js"/>
</head>

<body>
<header>

    <div class="container" style="max-width: 100%">
        <div class="row">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-lg navbar-light navigation" style="height: 55px">
                    <a class="navbar-brand" href="/">
                        <asset:image src="openLibrary-logo.png" width="170px" alt="page-logo"/>
                    </a>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <g:if test="${session?.user}">
                            <ul class="navbar-nav ml-auto mt-10">
                                <li class="nav-item">
                                    <a class="nav-link"
                                       href="${createLink(controller: 'user', action: 'userProfile', params: ['userId': session?.user?.id])}">
                                        <asset:image src="user-icon.png" width="40px" alt="user-logo"/>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <div style="margin: 20px;margin-bottom: 10px !important;">
                                        <a href="${createLink(controller: 'login', action: 'logout')}">logout</a>
                                    </div>
                                </li>
                            </ul>
                        </g:if>
                        <g:else>
                            <ul class="navbar-nav ml-auto mt-10">
                                <li class="nav-item">
                                    <a class="nav-link login-button"
                                       href="${createLink(controller: 'login', action: 'index')}">Login</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white add-button"
                                       href="${createLink(controller: 'login', action: 'signUp')}">Sign up</a>
                                </li>
                            </ul>
                        </g:else>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>
<section class="hero-area text-center" style="background-color: #F5F5F5">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="sidebar">
                    <!-- User Widget -->
                    <div class="widget user">
                        <!-- User Image -->
                        <div class="image d-flex justify-content-center">
                            <asset:image src="user1.png" width="170px" alt="page-logo"/>

                        </div>
                        <!-- User Name -->
                        <h5 class="text-center">${user?.username}</h5>
                    </div>
                    <!-- Dashboard Links -->
                    <div class="widget user-dashboard-menu" style="background-color: dodgerblue; height: 10px">
                        <ul>
                            <li style="text-align: center"><h4 style="margin-top: -7px;"><span style="color: white">Total Books <span>(${userBookList.size()})</span></span></h4>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-lg-8">
                <!-- Edit Profile Welcome Text -->
                <div class="widget welcome-message" style="background-color: #80ae80">
                <h2><span style="color: white">My Book List</span></h2>
                </div>
                <!-- Edit Personal Info -->
                <div class="row">
                    <g:each in="${userBookList}" var="userBook">
                        <div class="widget" style="width: 100%">
                            <a href="${createLink(controller: 'searchList', action: 'result', params: [bookId: userBook?.bookId, isbn: userBook?.isbn])}">
                                <img src="https://covers.openlibrary.org/b/id/${userBook?.bookCover}.jpg"
                                     alt="" style="max-width: 50%; max-height: 150px;float: left; margin-right: 25px">

                                <div style="margin: 50px">
                                    <h3>${userBook?.bookTitle}</h3>
                                </div>
                            </a>
                            <div style="float: right">
                                <a href="${createLink(controller: 'user', action: 'removeBook', params: [bookId: userBook?.bookId])}"> Remove from list </a>
                            </div>
                        </div>
                    </g:each>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Footer -->
<footer class="footer-bottom">
    <!-- Container Start -->
    <div class="container">
        <div class="row">
            <div class="col-lg-6 text-center text-lg-left mb-3 mb-lg-0">
                <!-- Course Name -->
                <div class="footerInfo">
                    <p>CIS 641 System Analysis and Design</p>
                </div>
            </div>

            <div class="col-lg-6">
                <!-- Team's Name -->
                <div class="footerInfo text-center text-lg-right">
                    <p>Team Algorithm</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Container End -->
    <!-- To Top -->

</footer>
</body>
</html>