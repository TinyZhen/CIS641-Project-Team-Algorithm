<!DOCTYPE html>

<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <!-- ** Basic Page Needs ** -->
    <meta charset="utf-8"/>
    <title>SignUp</title>

    <!-- favicon -->
    <asset:link href="tab-icon.png" rel="shortcut icon" type="image/x-icon"/>

    <!--Style sheets-->
    <asset:stylesheet src="bootstrap.min.css"/>

    <asset:stylesheet src="bootstrap-slider.css"/>
    <asset:stylesheet src="font-awesome.min.css"/>
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

                </nav>
            </div>
        </div>
    </div>
</header>


<section class="signUp py-5 border-top-1">
    <div class="container">
        <div style="height:450px" class="row justify-content-center">
            <div class="col-lg-5 col-md-8 align-item-center">
                <div class="border">
                    <h3 class="bg-gray p-4" style="text-align: center">Sign up an account</h3>

                    <g:if test="${message != ''}">
                        <g:if test="${responseCode == 400 || responseCode == 500}">
                            <p class="mt-3 d-block text-primary" style="text-align: center; color: red !important;" >${message}</p>
                        </g:if>
                        <g:else>
                            <p class="mt-3 d-block text-primary" style="text-align: center; color: green !important" >${message}</p>
                        </g:else>
                    </g:if>

                    <form action="${createLink(controller: 'user', action: 'createNewUser')}" method="POST">
                        <fieldset class="p-4">
                            <input class="form-control mb-3" type="text" placeholder="Username" name="username"
                                   required>
                            <input class="form-control mb-3" type="password" placeholder="Password" name="password"
                                   required>

                            <button type="submit" class="btn btn-primary font-weight-bold mt-3"
                                    style="padding: 8px 20px;float: right">Sign up
                            </button>

                            <p class="mt-3 d-block">Already have an account? <a class="text-primary"
                                                                                href="${createLink(controller: 'login', action: 'index')}">Login</a>
                            </p>
                        </fieldset>
                    </form>
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