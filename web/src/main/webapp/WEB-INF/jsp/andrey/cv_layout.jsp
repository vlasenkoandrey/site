<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Andrey</title>
    <meta name="author" content="Mr. Vlasenko" />
    <meta name="description" content="Online CV" />
    <meta name="keywords"  content="vlasenko" />
    <meta name="Resource-type" content="Document" />

    <link rel="stylesheet" type="text/css" href="../../resources/fullPage/jquery.fullPage.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/menu.css" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../resources/js/share.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/share.css"/>
    <link rel="stylesheet" type="text/css" href="../resources/css/andrey_cv.css"/>

    <script type="text/javascript" src="../resources/inview/inview.min.js"></script>

    <script type="text/javascript" src="../../resources/fullPage/jquery.fullPage.js"></script>
    <link rel="stylesheet" type="text/css" href="../../resources/css/grid.css"/>
    <link rel="stylesheet" type="text/css" href="../../resources/css/responsive-grid.css"/>
    <link rel="stylesheet" type="text/css" href="../../resources/css/andrey/experiencePage.css"/>
    <link rel="stylesheet" type="text/css" href="../../resources/customScrollbar/jquery.mCustomScrollbar.css">
    <script src="../../resources/customScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="../../resources/js/andrey_layout.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#fullpage').fullpage({
                anchors: ['pageSkills', 'pageEducation', 'pageExperience'],
                verticalCentered: true,
                slidesNavigation: true,
                loopHorizontal: false,
                scrollBar: true,
                menu: '#menu',
                css3: true
            });
            $(window).resize();
        });
    </script>

</head>
<body>
<ul id="menu">
    <li data-menuanchor="pageSkills" class="active"><a href="#pageSkills">Skills</a></li>
    <li data-menuanchor="pageEducation"><a href="#pageEducation">Education</a></li>
    <li data-menuanchor="pageExperience"><a href="#pageExperience">Experience</a></li>
</ul>
<div id="fullpage">

    <div class="section" id="sectionSkills">
        <div id="skillsPage">

        </div>
    </div>
    <div class="section" id="sectionEducation">
        <div id="educationPage">

        </div>
    </div>
    <div class="section" id="sectionExperience">
        <div class="slide active" id="slideSbt">
            <div id="sbtPage">

            </div>
        </div>
        <div class="slide" id="slideHflabs">
            <div id="hflabsPage">

            </div>
        </div>
        <div class="slide" id="slideQiwiWallet">
            <div id="qiwiWalletPage">

            </div>
        </div>
    </div>
    <div class="share_button facebook" onclick="shareFb('http://andrey.vlasenko.cc/', '618040598339952', 'Andrey Vlasenko', 'Software Engineer')"></div>
    <div class="share_button googleplus" onclick="shareGoog('http://andrey.vlasenko.cc/')"></div>
    <div class="share_button twitter" onclick="tweet('softwareengineer')"></div>
    <div class="share_button linkedin" onclick="shareLinkedin('http://andrey.vlasenko.cc/', 'Andrey Vlasenko, Software Engineer')"></div>
    <div class="share_button vk" onclick="shareVk('http://andrey.vlasenko.cc/', 'http://andrey.vlasenko.cc/resources/img/share/andreyShare.png')"></div>
</div>
</body>