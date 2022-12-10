<!DOCTYPE html>

<html lang="en">
<head>

    <!-- ** Basic Page Needs ** -->
    <meta charset="utf-8"/>
    <title>Book Result</title>

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
                                <a class="nav-link login-button"
                                   href="${createLink(controller: 'login', action: 'index')}">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white add-button"
                                   href="${createLink(controller: 'login', action: 'signUp')}">Sign up</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>

<!--Book Details -->
<section class="section bg-gray">
    <!-- Container Start -->
    <div class="container">
        <div class="row">
            <!-- Left sidebar -->
            <div class="col-lg-8">
                <div class="book-details">
                    <h1 class="book-title">${bookData?.bookTitle}</h1>

                    <div class="book-meta">
                        <ul class="list-inline">
                            <li class="list-inline-item"><i class="fa fa-user-o"></i> Author <a
                                    href="user-profile.html">${bookData?.authorName}</a></li>
                            <li class="list-inline-item"><i class="fa fa-folder-open-o"></i> Genre<a
                                    href="category.html">${bookData?.category}</a></li>
                            <li class="list-inline-item"><i class="fa fa-calendar"></i> Published Year<a
                                    href="category.html">${bookData?.publishedYear}</a></li>
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
                                <a class="nav-link" id="pills-review-tab" data-toggle="pill" href="#pills-review"
                                   role="tab" aria-controls="pills-contact"
                                   aria-selected="false">Reviews</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-read-tab" data-toggle="pill" href="#pills-read"
                                   role="tab" aria-controls="pills-read"
                                   aria-selected="false">Preview Book</a>
                            </li>
                        </ul>

                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                                 aria-labelledby="pills-home-tab">
                                <h3 class="tab-title">Book Description</h3>

                                <p>${bookData?.firstSentence}</p>
                            </div>

                            <div class="tab-pane fade" id="pills-review" role="tabpanel"
                                 aria-labelledby="pills-review-tab">
                                <h3 class="tab-title">Book Review</h3>
                                <g:if test="${bookData?.review?.size() == 0}">
                                    <h5 style="text-align: center;color: green;">No review available!</h5>
                                </g:if>
                                <g:else>
                                    <g:each in="${bookData?.review}" var="review">
                                        <div class="book-review">
                                            <div class="media">
                                                <!-- Avatar -->
                                                <asset:image src="review.png" alt="review"/>
                                                <div class="media-body">
                                                    %{--                                                    <!-- Ratings -->--}%
                                                    %{--                                                    <div class="ratings">--}%
                                                    %{--                                                        <ul class="list-inline">--}%
                                                    %{--                                                            <g:each in="${1..bookData?.review?.star}">--}%
                                                    %{--                                                                <li class="list-inline-item">--}%
                                                    %{--                                                                    <i class="fa fa-star"></i>--}%
                                                    %{--                                                                </li>--}%
                                                    %{--                                                            </g:each>--}%
                                                    %{--                                                        </ul>--}%
                                                    %{--                                                    </div>--}%

                                                    <div class="name">
                                                        <h5>${com.openLibrary.User.findById(review?.userId)?.username}</h5>
                                                    </div>

                                                    <div class="date">
                                                        <p>${review?.date}</p>
                                                    </div>

                                                    <div class="review-comment">
                                                        <p>
                                                            ${review?.description}
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </g:each>
                                </g:else>
                                <div class="review-submission">
                                    <h3 class="tab-title">Submit your review</h3>

                                    <div class="review-submit">
                                        <form action="${createLink(controller: 'user', action: 'saveReview')}"
                                              method="POST" class="row">
                                            <div class="col-12 mb-3">
                                                <textarea name="review" id="review" rows="3" class="form-control"
                                                          placeholder="Write your review here!" required></textarea>
                                            </div>
                                            <input type="text" style="display: none" name="bookId"
                                                   value="${bookData?.bookId}"/>
                                            <input type="text" style="display: none" name="userId"
                                                   value="${session?.user?.id}"/>
                                            <input type="text" style="display: none" name="isbn"
                                                   value="${bookData?.isbn}"/>

                                            <div class="col-12">
                                                <button type="submit" class="btn btn-main">Sumbit</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                            </div>

                            <div class="tab-pane fade" id="pills-read" role="tabpanel"
                                 aria-labelledby="pills-review-tab">
                                <iframe src="${bookData?.previewUrl}?view=theater&wrapper=false"
                                        title="${bookData?.bookTitle}"
                                        class="bookPreview"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="sidebar">
                    <!-- Book Cover -->
                    <div class="widget user text-center">
                        <div style="margin-bottom: 45px">
                            <img src="https://covers.openlibrary.org/b/id/${bookData?.bookCover}.jpg"
                                 alt="" width="170px">
                        </div>
                        <a href="${createLink(controller: 'user', action: 'addBookToList', params: [bookId: bookData?.bookId, userId: session?.user?.id, isbn: bookData?.isbn])}">
                            <button class="btn btn-transparent userActions">Add to my list</button>
                        </a>

                    </div>

                </div>
                %{--                <div class="sidebar">--}%
                %{--                    <!-- Author Profile widget -->--}%
                %{--                    <div class="widget user text-center" style="padding-top: 10px">--}%
                %{--                        <h3 style="padding: 8px">About the Author</h3>--}%
                %{--                        <asset:image src="author1.PNG" width="170px" alt=""/>--}%
                %{--                        <h4><a href="user-profile.html">Jane Austen</a></h4>--}%
                %{--                        <a href="single.html">See other books of the author</a>--}%
                %{--                    </div>--}%

                %{--                </div>--}%
            </div>
        </div>

        <div class="row">
            <div class="col-lg-8">

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

</footer>

</body>

</html>