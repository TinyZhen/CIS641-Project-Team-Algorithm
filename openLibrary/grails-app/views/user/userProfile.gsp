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
<section class="user-profile section">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="sidebar">
                    <!-- User Widget -->
                    <div class="widget user">
                        <!-- User Image -->
                        <div class="image d-flex justify-content-center">
                            <asset:image src="user-profile.png" width="170px" alt="page-logo"/>

                        </div>
                        <!-- User Name -->
                        <h5 class="text-center">${user?.username}</h5>
                    </div>
                    <!-- Dashboard Links -->
                    <div class="widget user-dashboard-menu">
                        <ul>
                            <li>Total Books <span>(${userBookList.size()})</span></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-lg-8">
                <!-- Edit Profile Welcome Text -->
                <div class="widget welcome-message">
                    <h2>My Book List</h2>
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
                        </div>
                    </g:each>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>