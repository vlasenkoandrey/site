<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Polina</title>
    <meta name="author" content="Mrs. Vlasenko" />
    <meta name="description" content="Online CV" />
    <meta name="keywords"  content="vlasenko" />
    <meta name="Resource-type" content="Document" />

    <link rel="stylesheet" type="text/css" href="../../resources/fullPage/jquery.fullPage.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/menu.css" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../resources/js/share.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/share.css"/>

    <script type="text/javascript" src="../resources/inview/inview.min.js"></script>

    <script type="text/javascript" src="../../resources/fullPage/jquery.fullPage.js"></script>
    <link rel="stylesheet" type="text/css" href="../../resources/css/grid.css"/>
    <link rel="stylesheet" type="text/css" href="../../resources/css/responsive-grid.css"/>
    <link rel="stylesheet" type="text/css" href="../../resources/css/andrey/experiencePage.css"/>
    <link rel="stylesheet" type="text/css" href="../../resources/customScrollbar/jquery.mCustomScrollbar.css">
    <script src="../../resources/customScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

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
        <div class="slide active" id="slideQiwiLead">
            <div id="qiwiLeadPage">

            </div>
        </div>
        <div class="slide" id="slideQiwi">
            <div id="qiwiPage">

            </div>
        </div>
    </div>
    <div class="share_button facebook" onclick="shareFb()"></div>
    <div class="share_button googleplus" onclick="shareGoog()"></div>
    <div class="share_button twitter" onclick="tweet('softwareengineer')"></div>
    <div class="share_button linkedin" onclick="shareLinkedin('Polina Vlasenko, Software Engineer')"></div>
    <div class="share_button vk" onclick="shareVk()"></div>

    <script type="text/javascript" src="../../resources/js/polina_layout.js"></script>
</div>
</body>