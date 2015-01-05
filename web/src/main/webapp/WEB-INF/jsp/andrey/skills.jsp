<script src="../resources/tagcanvas/jquery.tagcanvas.min.js"></script>

<div id="myCanvasContainer" style="margin-left: 70px">
    <canvas width="400" height="400" id="myCanvas">
        <p>Anything in here will be replaced on browsers that support the canvas element</p>
        <ul class="tagsphere">
            <li><a href="#">Java</a></li>
            <li><a href="#">Oracle</a></li>
            <li><a href="#">Spring</a></li>
            <li><a href="#">JDBC</a></li>
            <li><a href="#">JMS</a></li>
            <li><a href="#">Concurrency</a></li>
            <li><a href="#">Multithreading</a></li>
            <li><a href="#">Collections</a></li>
            <li><a href="#">Tomcat</a></li>
            <li><a href="#">Jetty</a></li>
            <li><a href="#">Intellij Idea</a></li>
            <li><a href="#">Eclipse</a></li>
            <li><a href="#">Maven</a></li>
            <li><a href="#">Gradle</a></li>
            <li><a href="#">XML</a></li>
            <li><a href="#">SQL</a></li>
            <li><a href="#">Git</a></li>
            <li><a href="#">Subversion</a></li>
            <li><a href="#">Servlets</a></li>
            <li><a href="#">SOAP</a></li>
            <li><a href="#">REST</a></li>
            <li><a href="#">Coherence</a></li>
            <li><a href="#">Mockito</a></li>
            <li><a href="#">ActiveMQ</a></li>
        </ul>
    </canvas>
</div>

<script>
    $('#myCanvas').tagcanvas({
        textColour : '#2DCF44',
        maxSpeed : 0.09,
        depth : 0.75,
        textHeight : 20,
        noSelect : true
    });
</script>