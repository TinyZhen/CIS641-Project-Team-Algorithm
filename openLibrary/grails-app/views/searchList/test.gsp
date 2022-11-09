<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en"/>

<head>
    <title>Search Result</title>
    <meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
    <meta name="description" content="Use this HTML basic website three fixed column layout template with the extra stuff on the left, the main content at the center, the navigation menu on the right.">
    <meta name="generator" content="HAPedit 3.1">
    <link rel="canonical" href="https://www.w3docs.com/snippets/html/layout_templates/08.html" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="HTML FlexBox Template - Three fixed columns, centered content" />
    <meta property="og:description" content="Use this HTML basic website three fixed column layout template with the extra stuff on the left, the main content at the center, the navigation menu on the right." />
    <meta property="og:image" content="https://www.w3docs.com/build/images/logo-amp.png" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:width" content="192" />
    <meta property="og:image:height" content="192" />
    <meta property="og:image:alt" content="W3dcos" />
    <style type="text/css">
    html, body {
        margin: 0;
        padding: 0;
    }

    body {
        color: #292929;
        font: 90% Roboto, Arial, sans-serif;
        font-weight: 300;
    }

    p {
        padding: 0 10px;
        line-height: 1.8;
    }

    ul li {
        padding-right: 10px;
        line-height: 1.6;
    }

    h3 {
        padding: 5px 20px;
        margin: 0;
    }

    div#header {
        position: relative;
    }

    div#header h1 {
        height: 80px;
        line-height: 80px;
        margin: 0;
        padding-left: 10px;
        background: #e0e0e0;
        color: #292929;
    }

    div#header a {
        position: absolute;
        right: 0;
        top: 23px;
        padding: 10px;
        color: #006;
    }

    div#navigation {
        background: #7cb71c;
    }

    div#navigation li {
        list-style: none;
    }

    div#extra {
        background: #147FA9;
    }

    div#footer {
        background: #42444e;
        color: #fff;
    }

    div#footer p {
        padding: 20px 10px;
    }

    div#container {
        width: 700px;
        margin: 0 auto;
    }

    div#wrapper {
        float: left;
        width: 100%;
    }

    div#content {
        margin: 0 150px;
    }

    div#navigation {
        float: left;
        width: 150px;
        margin-left: -150px;
    }

    div#extra {
        float: left;
        width: 150px;
        margin-left: -700px;
    }

    div#footer {
        clear: left;
        width: 100%;
    }
    </style>
</head>
<body>
<div id="container">
    <div id="header">
        <h1>Header</h1>
        <a href="/download/template/8" target="_blank">download this layout</a>
    </div>
    <div id="wrapper">
        <div id="content">
            <p><strong>1. Main Content</strong></p>
            <h3>The Ultimate Guide to Flexbox </h3>
            <p>The Flex Layout module is new layout module in CSS3 made to improve the items align, directions and order
            in the container even when they are with dynamic or even unknown size. The prime characteristic of the
            flex container is the ability to modify the width or height of its children to fill the available space
            in the best possible way on different screen sizes.
            </p>
            <p>Flexbox is relatively new, but it enjoys excellent browser support today (nearly 83% of browsers support
            Flexbox). Flexbox Layout is used for small application components, whereas CSS Grid Layout Module is
            aimed to handle the large scale layouts.
            </p>
            <h3>The Two axes of Flexbox</h3>
            <p>When working with flexbox you need to think in terms of two axes ? the main axis and the cross axis. The
            main axis is defined by the flex-direction property, and the cross axis runs perpendicular to it.
            Everything we do with flexbox refers back to these axes, so it is worth understanding how they work from
            the outset.
            </p>
        </div>
    </div>
    <div id="navigation">
        <p><strong>2. Navigation Menu</strong></p>
        <h3>Styling Flex Container</h3>
        <ul>
            <li>flex-direction</li>
            <li>flex-wrap</li>
            <li>justify-content</li>
            <li>align-content</li>
            <li>align-items</li>
        </ul>
        <h3>Designing Flex Items </h3>
        <ul>
            <li>order</li>
            <li>align-self</li>
            <li>flex-grow</li>
            <li>flex-shrink</li>
            <li>flex-basis</li>
        </ul>
    </div>
    <div id="extra">
        <p><strong>3. Additional Stuff</strong></p>
        <h3>In this guide you will learn:</h3>
        <ul>
            <li>How to use CSS Flexbox to build modern layouts</li>
            <li>How to align items both vertically and horizontally</li>
            <li>How to order items within container</li>
            <li>And more</li>
        </ul>
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
</div>
<script type="text/javascript">AddFillerLink("content", "navigation", "extra")</script>
</body>
</html>
