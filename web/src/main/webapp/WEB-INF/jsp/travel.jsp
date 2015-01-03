<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css" href="../resources/css/map.css"/>
<script type="text/javascript" src="../resources/gmaps/gmaps.js"></script>

<div class="textBoxBg">
    <div id="textFdTr" class="contentText">
        <p id="pTextTr"></p>
    </div>
</div>
<div id="travelMap" style="width: 70%;
    height: 400px;
    margin-left: auto;
    margin-right: auto;
    top: 80px;
    box-shadow: 0 0 15px #717171;">
</div>
<script>
    $('#pTextTr').load("${text}");
    $("#textFdTr").mCustomScrollbar({
        scrollButtons:{
            enable:true
        },
        theme:'rounded-dark'
    });
    new GMaps({
        div: '#travelMap',
        lat: 55.71,
        lng: 37.61,
        zoom: 2
    });
</script>