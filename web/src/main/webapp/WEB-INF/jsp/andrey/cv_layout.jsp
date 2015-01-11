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
    <link rel="stylesheet" type="text/css" href="../../resources/css/andrey_layout.css" />
    <link rel="stylesheet" type="text/css" href="../../resources/css/menu.css" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>

    <script type="text/javascript" src="../../resources/fullPage/jquery.fullPage.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/grid.css"/>
    <link rel="stylesheet" type="text/css" href="../resources/css/responsive-grid.css"/>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#fullpage').fullpage({
                anchors: ['pageSkills', 'pageEducation'],
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
</ul>
<div id="fullpage">

    <div class="section" id="sectionSkills">
        <div id="skillsPage">
            <script>
                $(function(){
                    $('#skillsPage').load("skills.jsp");
                });
            </script>
        </div>
    </div>
    <div class="section" id="sectionEducation">
        <div id="educationDiv">

        </div>
    </div>

</div>
</body>