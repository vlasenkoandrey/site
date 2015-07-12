<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="../resources/css/album_preview.css"/>

<script type="text/javascript">
	$('.center-cropped-img').load(function(){
	var divSide = 200;
    var width = $(this).width();
    var height = $(this).height();
    $(this).css("max-width", "none");
    $(this).css("max-height", "none");
    if(width > height){
        var newWidth = width * divSide / height;
        $(this).css("height", divSide);
        $(this).css("width", newWidth);
        var mLeft = (divSide - newWidth)/2;
        $(this).css("margin-left", mLeft);
    } else {
        var newHeight = height * divSide / width;
        $(this).css("height", newHeight);
        $(this).css("width", divSide);
        var mTop = (divSide - newHeight)/2;
        $(this).css("margin-top", mTop);
    }
     $(this).css("visibility", "visible");
     });
</script>

<div id ="albumsPreviewSet" class="yui3-g-r">
    <c:forEach items="${albumPreviewSet}" var="albumPreview">
        <div class="yui3-u-1-6">
            <div class="album_preview">
                <div class="center-cropped" id="album_preview_${albumPreview.name}">
                    <a href="${albumPreview.href}">
                        <img class="center-cropped-img" src="${albumPreview.imageSrc}"/>
                        <div class="slider_text">
                            <span>${albumPreview.textSrc}</span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </c:forEach>
</div>