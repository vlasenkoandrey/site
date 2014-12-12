<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>A&P</title>
    <meta name="author" content="Mr. & Mrs. Vlasenko" />
    <meta name="description" content="Family web site" />
    <meta name="keywords"  content="vlasenko" />
    <meta name="Resource-type" content="Document" />

    <link rel="stylesheet" type="text/css" href="../resources/fullPage/jquery.fullPage.css" />
    <link rel="stylesheet" type="text/css" href="../resources/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="../resources/css/menu.css" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>

    <script type="text/javascript" src="../resources/fullPage/jquery.fullPage.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#fullpage').fullpage({
                anchors: ['firstPage', 'secondPage'],
                verticalCentered: true,
                slidesNavigation: true,
                loopHorizontal: false,
                scrollBar: true,
                menu:'#menu',
                css3: true
            });
        });
    </script>

</head>
<body>
<ul id="menu">
    <li data-menuanchor="firstPage" class="active"><a href="#section0">We are</a></li>
    <li data-menuanchor="secondPage"><a href="#section1">About us</a></li>
</ul>
<div id="fullpage">

    <div class="section" id="section0"><h1>We are</h1></div>
    <div class="section" id="section1">
        <div class="slide" id="slide1"><h1>About Polina</h1></div>
        <div class="slide active" id="slide2"><h1>About us</h1></div>
        <div class="slide" id="slide3"><h1>About Andrey</h1></div>
    </div>
</div>
</body>