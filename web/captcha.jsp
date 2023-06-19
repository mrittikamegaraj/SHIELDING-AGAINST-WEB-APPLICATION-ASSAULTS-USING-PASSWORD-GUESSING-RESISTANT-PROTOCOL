

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Time</title>
</head>
<body>
<h1 id="time" style="text-align: center"></h1>
</body>
<script>
    var date = new Date();
    var sec = date.getSeconds();
    var min = date.getMinutes();
    setInterval(function () {
        sec++;
        if (sec == 60) {
            sec = 0;
            min++;
            if (min == 60) {
                min = 0;
            }
        }
        time = (min < 10 ? "0" + min : min) + ":" + (sec < 10 ? "0" + sec : sec);
        document.getElementById("time").innerHTML = time;
    }, 1000);
</script>
</html>