<%@ page contentType="text/html; charset=UTF-8" %>
<div class='yui3-g-r'>

    <div class="yui3-u-1-3">
        <div class="TextBoxBg1">

            <div id="scrollbox3" class="contentBox1">
                <div id="polinaText"></div>
            </div>
        </div>
    </div>

    <div class="yui3-u-1-3">
        <div class="weArePhoto"></div>
    </div>

    <div class="yui3-u-1-3">
        <div class="TextBoxBg2">

            <div id="scrollbox2" class="contentBox2">
                <div id="andreyText"></div>
            </div>
        </div>
    </div>
    <script>
        $("#polinaText").load("../resources/text/polina/ru/polina_main.txt");
        $("#andreyText").load("../resources/text/andrey/andrey_main.txt");
        $(".contentBox1, .contentBox2").mCustomScrollbar({
            scrollButtons:{
                enable:true
            },
            theme:'rounded-dark'
        });
    </script>
</div>