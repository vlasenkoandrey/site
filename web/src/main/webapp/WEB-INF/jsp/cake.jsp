<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Let's try!</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../resources/css/cake.css" />

    <script type="text/javascript">
        function cakeRandom() {
            var possible = "АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ";
            document.getElementById('cakeResult').textContent = possible.charAt(Math.floor(Math.random() * possible.length));
        }
    </script>
</head>
<body class="cakeC">
<div style="width: 50%; height: 50%; margin: 5% auto; text-align: center; font-size: 100px">
    <a onclick="cakeRandom()" href="#" style="color: #8c2c13">ПУСК!</a>
    <p id="cakeResult" style="color: #0e9b53; font-size: 130px"></p>
</div>
</body>
</html>