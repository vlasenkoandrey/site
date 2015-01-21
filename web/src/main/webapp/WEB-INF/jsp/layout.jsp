<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns:og="http://ogp.me/ns#">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>A&P</title>
    <meta name="author" content="Mr. & Mrs. Vlasenko" />
    <meta name="description" content="Family web site" />
    <meta name="keywords"  content="vlasenko" />
    <meta name="Resource-type" content="Document" />
    <meta property="og:image" content="http://vlasenko.cc/resources/img/share/weAreShare.png" />

    <link rel="stylesheet" type="text/css" href="../resources/fullPage/jquery.fullPage.css" />
    <link rel="stylesheet" type="text/css" href="../resources/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="../resources/css/menu.css" />
    <link rel="stylesheet" type="text/css" href="../resources/css/language.css" />

    <script type="text/javascript" src="../resources/js/share.js"></script>
    <script type="text/javascript" src="../resources/js/language.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>

    <script type="text/javascript" src="../resources/fullPage/jquery.fullPage.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>

    <script type="text/javascript" src="../resources/inview/inview.min.js"></script>

    <link rel="stylesheet" type="text/css" href="../resources/customScrollbar/jquery.mCustomScrollbar.css">
    <script src="../resources/customScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/intro.css"/>
    <link rel="stylesheet" type="text/css" href="../resources/css/grid.css"/>
    <link rel="stylesheet" type="text/css" href="../resources/css/responsive-grid.css"/>
    <link rel="stylesheet" type="text/css" href="../resources/css/share.css"/>

    <script src="../resources/js/language.js"></script>
    <script src="../resources/js/layout.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            detectLanguage();
            $('#fullpage').fullpage({
                anchors: ['pageWeAre', 'pageTheStory', 'pageTravelling', 'pageGallery', 'pageAbout'],
                verticalCentered: true,
                slidesNavigation: true,
                loopHorizontal: false,
                scrollBar: true,
                menu: '#menu',
                css3: true
            });
//            $(window).resize();
        });
    </script>

</head>

<body>
<ul id="menu">
    <li data-menuanchor="pageWeAre" class="active"><a href="#pageWeAre">We are</a></li>
    <li data-menuanchor="pageTheStory"><a href="#pageTheStory">The Story</a></li>
    <li data-menuanchor="pageTravelling"><a href="#pageTravelling">Travelling</a></li>
    <li data-menuanchor="pageGallery"><a href="#pageGallery">Gallery</a></li>
    <li data-menuanchor="pageAbout"><a href="#pageAbout/1">About us</a></li>
</ul>
<div id="fullpage">

    <div class="section" id="sectionWeAre">
        <div id="introPage">
        </div>
    </div>
    <div class="section" id="sectionTheStory">
        <div id="storyDiv">
        </div>
    </div>
    <div class="section" id="sectionTravelling">
        <div id="travelDiv">
        </div>
    </div>
    <div class="section" id="sectionGallery">
        <div class="slide active" id="slideAlbums">
            <div id="albumsSet"  style="margin-left: 40px; margin-right: 40px">
            </div>
        </div>
        <div class="slide" id="slideBalising">
            <div id="galleryBalising">
            </div>
        </div>
        <div class="slide" id="slideAndorra">
            <div id="galleryAndorra">
            </div>
        </div>
        <div class="slide" id="slideMinsk">
            <div id="galleryMinsk">
            </div>
        </div>
        <div class="slide" id="slideIstambul">
            <div id="galleryIstambul">
            </div>
        </div>
        <div class="slide" id="slideVeyzona">
            <div id="galleryVeyzona">
            </div>
        </div>
        <div class="slide" id="slideGreece">
            <div id="galleryGreece">
            </div>
        </div>
        <div class="slide" id="slideSpain">
            <div id="gallerySpain">
            </div>
        </div>
        <div class="slide" id="slidePhuket">
            <div id="galleryPhuket">
            </div>
        </div>
        <div class="slide" id="slideAstrahan">
            <div id="galleryAstrahan">
            </div>
        </div>
    </div>
    <div class="section" id="sectionAbout">
        <div class="slide" id="slidePolina"><h1>About Polina</h1></div>
        <div class="slide active" id="slideUs"><h1>About us</h1></div>
        <div class="slide" id="slideAndrey"><h1>About Andrey</h1></div>
    </div>
</div>
<div class="share_button facebook" onclick="shareFb('http://vlasenko.cc/', '1534328526837006', 'Vlasenko Family Site', 'Andrey & Polina')"></div>
<div class="share_button googleplus" onclick="shareGoog('http://vlasenko.cc/')"></div>
<div class="share_button twitter" onclick="tweet('familyvlasenko')"></div>
<div class="share_button vk" onclick="shareVk('http://vlasenko.cc/', 'http://vlasenko.cc/resources/img/share/weAreShare.png')"></div>
<div class="language" onchange="setLanguage()">
    <select id="selectedLanguage">
        <option id="english" class="langEn" value="en">English</option>
        <option id="russian" class="langRu" value="ru">Russian</option>
    </select>
</div>

</body>