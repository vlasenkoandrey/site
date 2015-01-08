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

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>

    <script type="text/javascript" src="../resources/fullPage/jquery.fullPage.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>

    <link rel="stylesheet" type="text/css" href="../resources/customScrollbar/jquery.mCustomScrollbar.css">
    <script src="../resources/customScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/intro.css"/>
    <link rel="stylesheet" type="text/css" href="../resources/css/grid.css"/>
    <link rel="stylesheet" type="text/css" href="../resources/css/responsive-grid.css"/>
    <link rel="stylesheet" type="text/css" href="../resources/css/share.css"/>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#fullpage').fullpage({
                anchors: ['pageWeAre', 'pageTheStory', 'pageTravelling', 'pageGallery', 'pageAbout'],
                verticalCentered: true,
                slidesNavigation: true,
                loopHorizontal: false,
                scrollBar: true,
                menu: '#menu',
                css3: true
            });
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
            <script>
                $(function(){
                    $('#introPage').load("intro.jsp");
                });
            </script>
        </div>
    </div>
    <div class="section" id="sectionTheStory">
        <div id="storyDiv">
            <script>
                $(function(){
                    $('#storyDiv').load("tgstory.jsp");
                });
            </script>
        </div>
    </div>
    <div class="section" id="sectionTravelling">
        <div id="travelDiv">
            <script>
                $(function(){
                    $('#travelDiv').load("travel.jsp");
                });
            </script>
        </div>
    </div>
    <div class="section" id="sectionGallery">
        <div class="slide active" id="slideAlbums">
            <div id="albumsSet"  style="margin-left: 40px; margin-right: 40px">
            <script>
                $(function(){
                    $('#albumsSet').load("go/albums_set.jsp");
                });
                </script>
                </div>
        </div>
        <div class="slide" id="slideAstrahan">
            <div id="galleryAstrahan">
                <script>
                $(function(){
                    $('#galleryAstrahan').load("tgastrahan.jsp");
                });
                </script>
            </div>
        </div>
        <div class="slide" id="slideGreece">
            <div id="galleryGreece">
                <script>
                    $(function(){
                        $('#galleryGreece').load("tggreece.jsp");
                    });
                </script>
            </div>
        </div>
        <div class="slide" id="slidePhuket"><h1>Пхукет</h1></div>
    </div>
    <div class="section" id="sectionAbout">
        <div class="slide" id="slidePolina"><h1>About Polina</h1></div>
        <div class="slide active" id="slideUs"><h1>About us</h1></div>
        <div class="slide" id="slideAndrey"><h1>About Andrey</h1></div>
    </div>
</div>
<div class="share_button facebook"></div>
<div class="share_button googleplus"></div>
<div class="share_button twitter"></div>
</body>