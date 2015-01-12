<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class='yui3-g-r'>
    <div class="yui3-u-1-2">
        <div class="leftTextBoxBg">
            <div id="textFd${exp}" class="leftContentBox">
                <p id="pText${exp}"></p>
            </div>
        </div>
    </div>
    <div class="yui3-u-1-2">
        <div class="${photo}">
        </div>
    </div>
</div>
<script>
    $('#pText${exp}').load("${text}");
    $("#textFd${exp}").mCustomScrollbar({
        scrollButtons:{
            enable:true
        },
        theme:'rounded-dark'
    });
</script>