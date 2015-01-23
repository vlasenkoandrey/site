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
            content: '<div class=tooltipMarker><p>Байдарки в Астрахани 2010</p><p><a href="#pageGallery/9">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 7.815540,
        lng: 98.335210,
        title: 'Пхукет',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Каникулы на Пхукете 2011</p><p><a href="#pageGallery/8">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 36.720699,
        lng: -4.420428,
        title: 'Малага',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Малага Испания 2011</p><p><a href="#pageGallery/7">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 54.611914,
        lng: 35.963792,
        title: 'Угра',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Байдарки на Угре 2011</p><p><a href="#pageGallery/9">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 46.179411,
        lng: 7.367698,
        title: 'Вейзона',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Лыжи в Вейзоне 2013</p><p><a href="#pageGallery/5">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 36.265717,
        lng: 27.814449,
        title: 'Родос',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Винсерфинг на Родосе 2012</p><p><a href="#pageGallery/6">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 53.901490,
        lng:  27.540729,
        title: 'Вена',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Выходные в Вене 2013</p></div>'
        }
    });
    map.addMarker({
        lat: 42.578946,
        lng:  1.650389,
        title: 'Андорра',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Лыжи в Эль Тартере 2014</p><p><a href="#pageGallery/2">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 41.369803,
        lng:  2.159754,
        title: 'Барселона',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Барселона 2014</p><p><a href="#pageGallery/2">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 53.901490,
        lng:  27.540729,
        title: 'Минск',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Майские в Минске 2013</p><p><a href="#pageGallery/3">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 41.072132,
        lng:  29.036899,
        title: 'Стамбул',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Соревнования по Босфору 2013 и 2014</p><p><a href="#pageGallery/4">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: -8.627945,
        lng:  115.104536,
        title: 'Бали',
        infoWindow: {
            content: '<div class=tooltipMarker><p>на Бали 2014</p><p><a href="#pageGallery/1">больше...</a></p></div>'
        }
    });
    map.addMarker({
        lat: 1.283440,
        lng:  103.860475,
        title: 'Сингапур',
        infoWindow: {
            content: '<div class=tooltipMarker><p>Волшебный Сингапур 2014</p><p><a href="#pageGallery/1">больше...</a></p></div>'
        }
    });
</script>