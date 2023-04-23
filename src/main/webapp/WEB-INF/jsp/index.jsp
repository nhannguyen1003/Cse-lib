<%--
  Created by IntelliJ IDEA.
  User: 君行天下
  Date: 2017/7/23
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>CSE-Library</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script src="js/js.cookie.js"></script>
    <style>
        #myCarousel{
            margin-left: 2%;
            width: 60%;
            height: 70%;
            float: left;
            z-index: 999;
            display: inline;
        }
        #login{
            float: left;
           height: 50%;
            width: 23%;
            margin-left: 6%;
            margin-top: 6%;
            display: inline;
            z-index: 999;
        }
        * {
            padding:0;
            margin:0;
        }
    </style>
    <script>
            $(function(){
                $('#myCarousel').carousel({
                    interval: 2000
                })
            });
    </script>
</head>
<body>
<c:if test="${!empty error}">
    <script>
            alert("${error}");
            window.location.href="login.html";
</script>
</c:if>
<h2 style="text-align: center;font-family: 'Monaco';color: palevioletred">CSE - Library</h2>
<div style="float:right;" id="github_iframe"></div>
<script>

    ! function() {

        function get_attribute(node, attr, default_value) {
            return node.getAttribute(attr) || default_value;
        }

        function get_by_tagname(name) {
            return document.getElementsByTagName(name);
        }

        function get_config_option() {
            var scripts = get_by_tagname("script"),
                script_len = scripts.length,
                script = scripts[script_len - 1]; 
            return {
                l: script_len, 
                z: get_attribute(script, "zIndex", -1), //z-index
                o: get_attribute(script, "opacity", 0.5), //opacity
                c: get_attribute(script, "color", "0,0,0"), //color
                n: get_attribute(script, "count", 99) //count
            };
        }
       
        function set_canvas_size() {
            canvas_width = the_canvas.width = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth,
                canvas_height = the_canvas.height = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
        }

     
        function draw_canvas() {
            context.clearRect(0, 0, canvas_width, canvas_height);
           
            var e, i, d, x_dist, y_dist, dist; 

            random_points.forEach(function(r, idx) {
                r.x += r.xa,
                    r.y += r.ya, 
                    r.xa *= r.x > canvas_width || r.x < 0 ? -1 : 1,
                    r.ya *= r.y > canvas_height || r.y < 0 ? -1 : 1, 
                    context.fillRect(r.x - 0.5, r.y - 0.5, 1, 1); 
                
                for (i = idx + 1; i < all_array.length; i++) {
                    e = all_array[i];
                    
                    if (null !== e.x && null !== e.y) {
                        x_dist = r.x - e.x; 
                        y_dist = r.y - e.y; 
                        dist = x_dist * x_dist + y_dist * y_dist; 

                        dist < e.max && (e === current_point && dist >= e.max / 2 && (r.x -= 0.03 * x_dist, r.y -= 0.03 * y_dist), //靠近的时候加速
                            d = (e.max - dist) / e.max,
                            context.beginPath(),
                            context.lineWidth = d / 2,
                            context.strokeStyle = "rgba(" + config.c + "," + (d + 0.2) + ")",
                            context.moveTo(r.x, r.y),
                            context.lineTo(e.x, e.y),
                            context.stroke());
                    }
                }
            }), frame_func(draw_canvas);
        }
        //
        var the_canvas = document.createElement("canvas"), //
            config = get_config_option(), //
            canvas_id = "c_n" + config.l, //canvas id
            context = the_canvas.getContext("2d"), canvas_width, canvas_height,
            frame_func = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function(func) {
                window.setTimeout(func, 1000 / 45);
            }, random = Math.random,
            current_point = {
                x: null, //
                y: null, //
                max: 20000 // 
            },
            all_array;
        the_canvas.id = canvas_id;
        the_canvas.style.cssText = "position:fixed;top:0;left:0;z-index:" + config.z + ";opacity:" + config.o;
        get_by_tagname("body")[0].appendChild(the_canvas);

        
        set_canvas_size();
        window.onresize = set_canvas_size;
       
        window.onmousemove = function(e) {
            e = e || window.event;
            current_point.x = e.clientX;
            current_point.y = e.clientY;
        }, window.onmouseout = function() {
            current_point.x = null;
            current_point.y = null;
        };
        //
        for (var random_points = [], i = 0; config.n > i; i++) {
            var x = random() * canvas_width, //
                y = random() * canvas_height,
                xa = 2 * random() - 1, //
                ya = 2 * random() - 1;
            // 
            random_points.push({
                x: x,
                y: y,
                xa: xa,
                ya: ya,
                max: 6000 //沾附离
            });
        }
        all_array = random_points.concat([current_point]);
        //
        setTimeout(function() {
            draw_canvas();
        }, 100);
    }();
</script>
<div id="myCarousel" class="carousel slide">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="img/img-0130-398.jpg" alt="第一张">
        </div>
        <div class="item">
            <img src="img/bk1.png" alt="第二张">
        </div>
        <div class="item">
            <img src="img/105905-106.jpg" alt="第三张">
        </div>

    </div>
    <a class="carousel-control left" href="#myCarousel"
       data-slide="prev">&lsaquo;
    </a>
    <a class="carousel-control right" href="#myCarousel"
       data-slide="next">&rsaquo;
    </a>
</div>
<div class="panel panel-default" id="login">
    <div class="panel-heading" style="background-color: #fff">
        <h3 class="panel-title">Login</h3>
    </div>
    <div class="panel-body">
        <div class="form-group">
            <label for="id">Username</label>
            <input type="text" class="form-control" id="id" placeholder="Please enter username">
        </div>
        <div class="form-group">
            <label for="passwd">Password</label>
            <input type="password" class="form-control" id="passwd" placeholder="Please enter password">
        </div>
        <div class="checkbox text-left">
            <label>
                <input type="checkbox" id="remember">Remember me
            </label>
            <a style="margin-left: 50px" href="#">Forget password?</a>
        </div>

        <p style="text-align: right;color: red;position: absolute" id="info"></p><br/>
        <button id="loginButton"  class="btn btn-primary  btn-block">Login
        </button>
    </div>
</div>
    <script>
        $("#id").keyup(
            function () {
                if(isNaN($("#id").val())){
                    $("#info").text("The account number can only be a number");
                }
                else {
                    $("#info").text("");
                }
            }
        )
        // 
        function rememberLogin(username, password, checked) {
            Cookies.set('loginStatus', {
                username: username,
                password: password,
                remember: checked
            }, {expires: 30, path: ''})
        }
        // 
        function setLoginStatus() {
            var loginStatusText = Cookies.get('loginStatus')
            if (loginStatusText) {
                var loginStatus
                try {
                    loginStatus = JSON.parse(loginStatusText);
                    $('#id').val(loginStatus.username);
                    $('#passwd').val(loginStatus.password);
                    $("#remember").prop('checked',true);
                } catch (__) {}
            }
        }

        // 
        setLoginStatus();
        $("#loginButton").click(function () {
            var id =$("#id").val();
            var passwd=$("#passwd").val();
            var remember=$("#remember").prop('checked');

            if( id=='' && passwd==''){
                $("#info").text("Tip: Account and password cannot be empty!");
            }
            else if ( id ==''){
                $("#info").text("Tip: The account cannot be empty!");
            }
            else if( passwd ==''){
                $("#info").text("Tip: The password cannot be empty!");
            }
            else if(isNaN( id )){
                $("#info").text("Tip: The account number must be a number");
            }
            else {
                $.ajax({
                    type: "POST",
                    url: "/api/loginCheck",
                    data: {
                        id:id ,
                        passwd: passwd
                    },
                    dataType: "json",
                    success: function(data) {
                        if(data.stateCode.trim() == "0") {
                            $("#info").text("The account or password is wrong!");
                        } else if(data.stateCode.trim() == "1") {
                            $("#info").text("Prompt: Login is successful, jumping...");
                            window.location.href="/admin_main.html";
                        } else if(data.stateCode.trim() == "2"){
                            if(remember){
                                rememberLogin(id,passwd,remember);
                            }else {
                                Cookies.remove('loginStatus');
                            }
                            $("#info").text("Prompt: Login is successful, jumping...");
                            window.location.href="/reader_main.html";


                        }
                    }
                });
            }
        })

    </script>
</div>

</body>
</html>
