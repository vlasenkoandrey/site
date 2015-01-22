<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript" src="../resources/fotorama/fotorama.js"></script>
<link rel="stylesheet" type="text/css" href="../resources/fotorama/fotorama.css"/>
<link rel="stylesheet" type="text/css" href="../resources/css/job.css"/>

<div class="textBoxBgJob">
    <div id="textFdJob" class="contentTextJob">
        <p id="pTextJob"></p>
    </div>
</div>

<div class='yui3-g-r'>

    <div class="yui3-u-1-2">
        <div class="polinaWelcome" onclick="window.location.href='http://polina.vlasenko.cc'"></div>
    </div>

    <div class="yui3-u-1-2">
        <div class="andreyWelcome" onclick="window.location.href='http://andrey.vlasenko.cc'"></div>
    </div>
</div>
<script>
    $('#pTextJob').load("${text}");
    $("#textFdJob").mCustomScrollbar({
        scrollButtons:{
            enable:true
        },
        theme:'rounded-dark'
    });
</script>