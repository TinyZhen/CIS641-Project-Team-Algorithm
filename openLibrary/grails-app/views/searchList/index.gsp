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

<!-- Header -->
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

<section class="section-sm">
    <div class="container">

        <div class="row justify-content-center">
            <div class="col-lg-12 col-md-12 align-content-center">
                <form id="searchBar" action="${createLink(controller: 'searchList', action: 'index')}"
                      method="GET" autocomplete="off">

                    <div class="form-row">
                        <div class="form-group col-xl-10 col-lg-10 col-md-10">
                            <input type="text" class="form-control my-2 my-lg-1" name="searchKey"
                                   placeholder="Search a book by Title" value="${searchedKey ?: ''}">
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

        <div class="row">
            <div class="col-md-12">
                <div class="search-result bg-gray">
                    <h2>Results For "${searchedKey ?: 'No Books found!'}"</h2>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12 col-md-12">
                <g:if test="${searchedKey?.size() > 0}">
                    <g:each var="book" in="${bookData}">
                        <div class="ad-listing-list mt-20">
                            <div class="row p-lg-3 p-sm-5 p-4">
                                <div class="col-lg-4 align-self-center" style="text-align: center">

                                    <img src="https://covers.openlibrary.org/b/id/${book?.bookCover}.jpg"
                                         alt="" style="max-width: 50%; max-height: 150px;">

                                </div>

                                <div class="col-lg-8">
                                    <div class="row">
                                        <div class="col-lg-8 col-md-10">
                                            <div class="ad-listing-content">
                                                <div>
                                                    <span class="font-weight-bold">${book?.bookTitle}</span>
                                                </div>
                                                <ul class="list-inline mt-2 mb-3">
                                                    %{--TODO change the type of the authorName--}%
                                                    <li class="list-inline-item"><i
                                                            class="fa fa-user"></i>&nbsp;&nbsp; ${book?.authorName?.replace("[","").replace("]","").replace('"','')}</li>
                                                    <li class="list-inline-item"><i
                                                            class="fa fa-calendar"></i>&nbsp;&nbsp; ${book?.publishedDate}</li>
                                                    <li class="list-inline-item"><i
                                                            class="fa fa-folder-open-o"></i>
                                                        &nbsp;${book?.category}
                                                    </li>
                                                </ul>

                                                <p class="pr-5">${book.firstSentence}</p>
                                            </div>
                                        </div>

                                        <div class="col-lg-4 align-self-center">
                                            <button type="submit" class="btn btn-primary">Book Details</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </g:each>
                </g:if>

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

</footer>
</body>
</html>
