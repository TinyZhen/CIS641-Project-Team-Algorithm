<!DOCTYPE html>

<html lang="en">
<head>

    <!-- ** Basic Page Needs ** -->
    <meta charset="utf-8"/>
    <title>Result</title>

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
    <asset:stylesheet src="style.css" />

    <!-- Essential Scripts -->
    <asset:javascript  src="jquery-3.3.1.min.js"/>
    <asset:javascript  src="popper.min.js"/>
    <asset:javascript  src="bootstrap.min.js"/>
    <asset:javascript  src="bootstrap-slider.js"/>
    <asset:javascript  src="tether.min.js"/>
    <asset:javascript  src="jquery.raty-fa.js"/>
    <asset:javascript  src="slick.min.js"/>
    <asset:javascript  src="jquery.nice-select.min.js"/>

    <asset:javascript  src="script.js"/>

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
                                <a class="nav-link login-button" href="/logIn">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white add-button" href="/signup">Sign up</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>


<!--Page Search -->
<!--<section class="page-search">-->
<!--    <div class="container">-->
<!--        <div class="row">-->
<!--            <div class="col-md-12">-->
<!--                &lt;!&ndash; Advance Search &ndash;&gt;-->
<!--                <div class="advance-search">-->
<!--                    <div class="container">-->
<!--                        <div class="row justify-content-center">-->
<!--                            <div class="col-lg-12 col-md-12 align-content-center">-->
<!--                                <form>-->
<!--                                    <div class="form-row">-->
<!--                                        <div class="form-group col-xl-10 col-lg-10 col-md-10">-->
<!--                                            <input type="text" class="form-control my-2 my-lg-1" id="inputtext4"-->
<!--                                                   placeholder="Search a book by Title">-->
<!--                                        </div>-->
<!--                                        <div class="form-group col-xl-2 col-lg-2 col-md-2 align-self-center">-->
<!--                                            <button type="submit" class="btn btn-primary active w-100"-->
<!--                                                    style="color: #000000; background-color: #f7f9fb">Search Now-->
<!--                                            </button>-->
<!--                                        </div>-->
<!--                                    </div>-->
<!--                                </form>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--</section>-->

<!--Book Details -->
<section class="section bg-gray">
    <!-- Container Start -->
    <div class="container">
        <div class="row">
            <!-- Left sidebar -->
            <div class="col-lg-8">
                <div class="book-details">
                    <h1 class="book-title">${bookData?.}</h1>
                    <div class="book-meta">
                        <ul class="list-inline">
                            <li class="list-inline-item"><i class="fa fa-user-o"></i> Author <a
                                    href="user-profile.html">Jane Austen</a></li>
                            <li class="list-inline-item"><i class="fa fa-folder-open-o"></i> Genre<a
                                    href="category.html"> Romance novel</a></li>
                            <li class="list-inline-item"><i class="fa fa-calendar"></i> Published Year<a
                                    href="category.html">1813</a></li>
                        </ul>
                    </div>

                    <div class="content mt-5 pt-5">
                        <ul class="nav nav-pills" id="pills-tab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home"
                                   role="tab" aria-controls="pills-home"
                                   aria-selected="true">About the Book</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact"
                                   role="tab" aria-controls="pills-contact"
                                   aria-selected="false">Reviews</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                                 aria-labelledby="pills-home-tab">
                                <h3 class="tab-title">Book Description</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
                                irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                                deserunt mollit anim id est laborum.</p>
                            </div>

                            <div class="tab-pane fade" id="pills-contact" role="tabpanel"
                                 aria-labelledby="pills-contact-tab">
                                <h3 class="tab-title">Book Review</h3>
                                <div class="book-review">
                                    <div class="media">
                                        <!-- Avater -->
                                        <asset:image src="userPhoto-1.png" alt="avater"/>
                                        <div class="media-body">
                                            <!-- Ratings -->
                                            <div class="ratings">
                                                <ul class="list-inline">
                                                    <li class="list-inline-item">
                                                        <i class="fa fa-star"></i>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <i class="fa fa-star"></i>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <i class="fa fa-star"></i>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <i class="fa fa-star"></i>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <i class="fa fa-star"></i>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="name">
                                                <h5>Astha Thapa</h5>
                                            </div>
                                            <div class="date">
                                                <p>Sep 14, 2019</p>
                                            </div>
                                            <div class="review-comment">
                                                <p>
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu nisl nunc mi ipsum faucibus vitae.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="review-submission">
                                        <h3 class="tab-title">Submit your review</h3>
                                        <!-- Rate -->
                                        <div class="rate">
                                            <div class="starrr"></div>
                                        </div>
                                        <div class="review-submit">
                                            <form action="#" method="POST" class="row">
                                                <div class="col-12 mb-3">
                                                    <textarea name="review" id="review" rows="3" class="form-control"
                                                              placeholder="Message" required></textarea>
                                                </div>
                                                <div class="col-12">
                                                    <button type="submit" class="btn btn-main">Sumbit</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="sidebar">
                    <!-- Book Cover -->
                    <div class="widget user text-center">
                        <asset:image src="book2.PNG" width="170px" alt=""/>
                        <button class="btn btn-transparent userActions" style="margin-left: 17px!important;">Preview book</button>
                        <button class="btn btn-transparent userActions">Add to my list</button>
                    </div>

                </div>
                <div class="sidebar">
                    <!-- Author Profile widget -->
                    <div class="widget user text-center" style="padding-top: 10px">
                        <h3 style="padding: 8px">About the Author</h3>
                        <asset:image src="author1.PNG" width="170px" alt=""/>
                        <h4><a href="user-profile.html">Jane Austen</a></h4>
                        <a href="single.html">See other books of the author</a>
                    </div>

                </div>
            </div>

        </div>
    </div>
    <!-- Container End -->
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
    <div class="scroll-top-to">
        <i class="fa fa-angle-up"></i>
    </div>
</footer>

</body>

</html>