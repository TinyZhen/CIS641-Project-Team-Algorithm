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
                        <ul class="navbar-nav ml-auto mt-10">
                            <li class="nav-item">
                                <a class="nav-link login-button" href="${createLink(controller: 'login', action: 'index')}">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white add-button" href="${createLink(controller: 'login', action: 'signUp')}">Sign up</a>
                            </li>
                        </ul>
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
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h2>Open Library Notice Board</h2>
                </div>
            </div>
        </div>

        <div class="row">

            <div class="col-lg-12">
                <div class="trending-ads-slide">
                    <div class="col-sm-12 col-lg-4">
                        <!-- Book card -->
                        <div class="product-item bg-light">
                            <div class="card">
                                <div class="thumb-content">
                                    <!-- <div class="price">$200</div> -->
                                    <a href="#">
                                        <asset:image src="books/book-1.jpg" width="170px"
                                                     alt="Card image cap"/>
                                    </a>
                                </div>

                                <div class="card-body">
                                    <h4 class="card-title"><a href="#">Book One</a></h4>
                                    <ul class="list-inline book-meta">
                                        <li class="list-inline-item">
                                            <a href="#"><i class="fa fa-folder-open-o"></i>Comedy</a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#"><i class="fa fa-calendar"></i>1967</a>
                                        </li>
                                    </ul>

                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Explicabo, aliquam!</p>

                                    <div class="product-ratings">
                                        <ul class="list-inline">
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-sm-12 col-lg-4">
                        <!-- Book card -->
                        <div class="product-item bg-light">
                            <div class="card">
                                <div class="thumb-content">
                                    <a href="#">
                                        <asset:image src="books/book-1.jpg" width="170px"
                                                     alt="Card image cap"/>
                                    </a>
                                </div>

                                <div class="card-body">
                                    <h4 class="card-title"><a href="#">Book Two</a></h4>
                                    <ul class="list-inline book-meta">
                                        <li class="list-inline-item">
                                            <a href="#"><i class="fa fa-folder-open-o"></i>Adventure</a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#"><i class="fa fa-calendar"></i>2002</a>
                                        </li>
                                    </ul>

                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Explicabo, aliquam!</p>

                                    <div class="product-ratings">
                                        <ul class="list-inline">
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 col-lg-4">
                        <!-- Book card -->
                        <div class="product-item bg-light">
                            <div class="card">
                                <div class="thumb-content">
                                    <a href="#">
                                        <asset:image src="books/book-1.jpg" width="170px"
                                                     alt="Card image cap"/>
                                    </a>
                                </div>

                                <div class="card-body">
                                    <h4 class="card-title"><a href="#">Book Three</a></h4>
                                    <ul class="list-inline book-meta">
                                        <li class="list-inline-item">
                                            <a href="#"><i class="fa fa-folder-open-o"></i>Horror</a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#"><i class="fa fa-calendar"></i>2008</a>
                                        </li>
                                    </ul>

                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Explicabo, aliquam!</p>

                                    <div class="product-ratings">
                                        <ul class="list-inline">
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 col-lg-4">
                        <!-- Book card -->
                        <div class="product-item bg-light">
                            <div class="card">
                                <div class="thumb-content">
                                    <a href="#">
                                        <asset:image src="books/book-1.jpg" width="170px"
                                                     alt="Card image cap"/>
                                    </a>
                                </div>

                                <div class="card-body">
                                    <h4 class="card-title"><a href="#">Book Four</a></h4>
                                    <ul class="list-inline book-meta">
                                        <li class="list-inline-item">
                                            <a href="#"><i class="fa fa-folder-open-o"></i>Biography</a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#"><i class="fa fa-calendar"></i>1989</a>
                                        </li>
                                    </ul>

                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                    Explicabo, aliquam!</p>

                                    <div class="product-ratings">
                                        <ul class="list-inline">
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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