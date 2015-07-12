<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" type="text/css" href="../resources/css/map.css"/>
<link rel="stylesheet" type="text/css" href="../resources/css/gmap.css" />

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
    var map = new GMaps({
        div: '#travelMap',
        lat: 45.71,
        lng: 37.61,
        zoom: 2
    });
    map.addMarker({
        lat: 46.334405,
        lng: 47.993586,
        title: 'Астрахань',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Астрахань</p><p><a href="#pageGallery/10">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 7.815540,
        lng: 98.335210,
        title: 'Пхукет',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Пхукет</p><p><a href="#pageGallery/9">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 36.720699,
        lng: -4.420428,
        title: 'Малага',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Малага</p><p><a href="#pageGallery/8">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 54.611914,
        lng: 35.963792,
        title: 'Угра',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Угра</p><p><a href="#pageGallery/10">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 46.179411,
        lng: 7.367698,
        title: 'Вейзона',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Вейзона</p><p><a href="#pageGallery/6">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 36.265717,
        lng: 27.814449,
        title: 'Родос',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Родос</p><p><a href="#pageGallery/7">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 53.901490,
        lng:  27.540729,
        title: 'Вена',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Вена</p></div>'
        }
    });
    map.addMarker({
        lat: 42.578946,
        lng:  1.650389,
        title: 'Андорра',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Эль Тартер</p><p><a href="#pageGallery/3">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 41.369803,
        lng:  2.159754,
        title: 'Барселона',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Барселона</p><p><a href="#pageGallery/3">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 53.901490,
        lng:  27.540729,
        title: 'Минск',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Минск</p><p><a href="#pageGallery/4">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 41.072132,
        lng:  29.036899,
        title: 'Стамбул',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Стамбул</p><p><a href="#pageGallery/5">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: -8.627945,
        lng:  115.104536,
        title: 'Бали',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Бали</p><p><a href="#pageGallery/2">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 1.283440,
        lng:  103.860475,
        title: 'Сингапур',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Сингапур</p><p><a href="#pageGallery/2">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 46.476039,
        lng:  11.770347,
        title: 'Канацеи',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Канацеи</p><p><a href="#pageGallery/1">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 27.909563,
        lng: 34.324322,
        title: 'Шарм Эль Шейх',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Канацеи</p><p><a href="#pageGallery/1">больше...</a></p></div>'
        }
    });

    map.addMarker({
        lat: 28.140847,
        lng: -17.004749,
        title: 'Los Gigantes',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Канацеи</p><p><a href="#pageGallery/1">больше...</a></p></div>'
        }
    });
</script>