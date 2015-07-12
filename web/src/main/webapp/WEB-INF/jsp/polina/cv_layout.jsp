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
    <link rel="stylesheet" type="text/css" href="../resources/css/polina_cv.css"/>

    <script type="text/javascript" src="../resources/inview/inview.min.js"></script>

    <script type="text/javascript" src="../../resources/fullPage/jquery.fullPage.js"></script>
    <link rel="stylesheet" type="text/css" href="../../resources/css/grid.css"/>
    <link rel="stylesheet" type="text/css" href="../../resources/css/responsive-grid.css"/>
    <link rel="stylesheet" type="text/css" href="../../resources/css/andrey/experiencePage.css"/>
    <link rel="stylesheet" type="text/css" href="../../resources/customScrollbar/jquery.mCustomScrollbar.css">
    <script src="../../resources/customScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="../../resources/js/polina_layout.js"></script>

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
        <div class="slide active" id="slideQiwiLead">
            <div id="qiwiLeadPage">

            </div>
        </div>
        <div class="slide" id="slideQiwi">
            <div id="qiwiPage">

            </div>
        </div>
    </div>
    <div class="share_button facebook" onclick="shareFb('http://polina.vlasenko.cc/','788581117901586', 'Polina Vlasenko', 'Software Engineer')"></div>
    <div class="share_button googleplus" onclick="shareGoog('http://polina.vlasenko.cc/')"></div>
    <div class="share_button twitter" onclick="tweet('softwareengineer')"></div>
    <div class="share_button linkedin" onclick="shareLinkedin('http://polina.vlasenko.cc/', 'Polina Vlasenko, Software Engineer')"></div>
    <div class="share_button vk" onclick="shareVk('http://polina.vlasenko.cc/', 'http://polina.vlasenko.cc/static/img/share/polinaShare.png')"></div>

</div>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-58829020-3', 'auto');
    ga('send', 'pageview');

</script>
</body>