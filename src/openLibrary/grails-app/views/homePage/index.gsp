<%--
  Created by IntelliJ IDEA.
  User: Astha
  Date: 10/25/2022
  Time: 10:16 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en"/>

<head>

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

<body class="body-wrapper">

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

<!-- Search Section --->
<section class="hero-area bg-1 text-center overly">
    <!-- Container Start -->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <!-- Header Content -->
                <div class="content-block">
                    <h1>"I have always imagined paraside will be a kind of library"</h1>

                    <p><i>Jorge Luis Borges</i></p>
                </div>
                <!-- Advance Search -->
                <div class="advance-search">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-12 col-md-12 align-content-center">
                                <form id="searchBar" action="${createLink(controller: 'searchList', action: 'index')}"
                                      method="GET" autocomplete="off">

                                    <div class="form-row">
                                        <div class="form-group col-xl-10 col-lg-10 col-md-10">
                                            <input type="text" class="form-control my-2 my-lg-1" name="searchKey"
                                                   placeholder="Search a book by Title">
                                        </div>

                                        <div class="form-group col-xl-2 col-lg-2 col-md-2 align-self-center">
                                            <button class="btn btn-primary active w-100">
                                                Search
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Container End -->
</section>

<!-- Notice Board --->
<section class="popular-deals section bg-gray">
    <div class="container">

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