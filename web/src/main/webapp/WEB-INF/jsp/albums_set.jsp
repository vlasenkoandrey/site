<%@ page contentType="text/html; charset=UTF-8" %>
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

<div class="yui3-g-r">
    <div class="yui3-u-1-5">
        <div class="album_preview">
            <div class="center-cropped">
                <a href="#">
                    <img class="center-cropped-img" src="../resources/img/fs/1.jpg"/>

                    <div class="slider_text">
                        <span>Альбом 1</span>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div class="yui3-u-1-5">
        <div class="album_preview">
            <div class="center-cropped">
                <a href="#">
                    <img class="center-cropped-img" src="../resources/img/fs/2.jpg"/>

                    <div class="slider_text">
                        <span>Альбом 2</span>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div class="yui3-u-1-5">
        <div class="album_preview">
            <div class="center-cropped">
                <a href="#">
                    <img class="center-cropped-img" src="../resources/img/fs/3.jpg"/>

                    <div class="slider_text">
                        <span>Альбом 3</span>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div class="yui3-u-1-5">
        <div class="album_preview">
            <div class="center-cropped">
                <a href="#">
                    <img class="center-cropped-img" src="../resources/img/fs/3.jpg"/>

                    <div class="slider_text">
                        <span>Альбом 3</span>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div class="yui3-u-1-5">
        <div class="album_preview">
            <div class="center-cropped">
                <a href="#">
                    <img class="center-cropped-img" src="../resources/img/fs/1.jpg"/>

                    <div class="slider_text">
                        <span>Альбом 4</span>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div class="yui3-u-1-5">
        <div class="album_preview">
            <div class="center-cropped">
                <a href="#">
                    <img class="center-cropped-img" src="../resources/img/fs/2.jpg"/>

                    <div class="slider_text">
                        <span>Альбом 5</span>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div class="yui3-u-1-5">
        <div class="album_preview">
            <div class="center-cropped">
                <a href="#">
                    <img class="center-cropped-img" src="../resources/img/fs/3.jpg"/>

                    <div class="slider_text">
                        <span>Альбом 6</span>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>