<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript" src="../resources/fotorama/fotorama.js"></script>
<link rel="stylesheet" type="text/css" href="../resources/fotorama/fotorama.css"/>
<link rel="stylesheet" type="text/css" href="../resources/css/text-gallery.css"/>
<div>

<div class="textBoxBgGal">
    <div id="textFd${id}" class="contentTextGal">
        <div id="pText${id}"></div>
    </div>
</div>

<div class="gallery">
    <div class="fotorama" data-width="100%" data-hight="50vh" data-nav="thumbs" data-ratio="4/3" data-allowfullscreen="true">
        <c:forEach items="${videos}" var="video">
            <a href="${video}">One</a>
        </c:forEach>

        <c:forEach items="${images}" var="image">
            <a href="${image.fullSize}"><img src="${image.icon}"/></a>
        </c:forEach>
    </div>
</div>
<script>
    $('#pText${id}').load("${text}");
    $("#textFd${id}").mCustomScrollbar({
        scrollButtons:{
            enable:true
        },
        theme:'rounded-dark'
    });
</script>
</div>