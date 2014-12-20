<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="../resources/fotorama/fotorama.js"></script>
<link rel="stylesheet" type="text/css" href="../resources/fotorama/fotorama.css"/>

<div class="fotorama" data-nav="thumbs" data-allowfullscreen="true" style="top: 50px; margin-left: auto; margin-right: auto;">
    <c:forEach items="${videos}" var="video">
        <a href="${video}">One</a>
    </c:forEach>

    <c:forEach items="${images}" var="image">
        <a href="${image.fullSize}"><img src="${image.icon}"/></a>
    </c:forEach>
</div>