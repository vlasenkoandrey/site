<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="../resources/tagcanvas/jquery.tagcanvas.min.js"></script>
<link rel="stylesheet" type="text/css" href="../resources/css/andrey/skills.css"/>

<div class='yui3-g-r'>
    <div class="yui3-u-1-2">
        <div id="myCanvasContainer"  class="skillscloud">
            <canvas width="400" height="400" id="myCanvas">
                <ul class="tagsphere">
                    <c:forEach items="${skills}" var="skill">
                        <li><a href="#">${skill}</a></li>
                    </c:forEach>
                </ul>
            </canvas>
        </div>
    </div>
    <div class="yui3-u-1-2">
        <div class="subzero"></div>
    </div>
</div>

<script>
    $('#myCanvas').tagcanvas({
        textColour : '#C64409',
        maxSpeed : 0.09,
        depth : 0.75,
        textHeight : 20,
        noSelect : true
    });
</script>