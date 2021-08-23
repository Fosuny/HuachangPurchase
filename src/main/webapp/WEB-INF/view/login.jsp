<%--
  Created by IntelliJ IDEA.
  User: Fosuny
  Date: 2021/4/20
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>华昌采购 | 登陆</title>
    <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
    <meta name="author" content="Vincent Garreau" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/static/css/login/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/login/reset.css"/>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/images/favicon.ico">
</head>
<body>
    <div class="videocontainer">
        <video class="fullscreenvideo" id="bgvid" playsinline="" autoplay="" muted="" loop="">
            <source src="${pageContext.request.contextPath}/static/videos/FrostStarWarrior.mp4" type="video/mp4">
        </video>
    </div>
    <div id="particles-js">
        <form name="from" action="${pageContext.request.contextPath}/login/loginafter" method="post">
            <div class="login">
                <div class="user-text">
                    <img src="${pageContext.request.contextPath}/static/images/favicon.ico" style="width: 30px;height:30px;margin-top: -3px;margin-left: 5px">
                    <a class="text-size">&nbsp;&nbsp;华&nbsp;昌&nbsp;采&nbsp;购</a>
                    <div class="user-img">
                        <img src="${pageContext.request.contextPath}/static/images/1.jpg" style="border-radius:50px;">
                    </div>
                </div>
                <div class="login-top">
                    <span>登录</span>
                </div>
                <div class="login-center clearfix">
                    <div class="login-center-img"><img src="${pageContext.request.contextPath}/static/images/name.png"/></div>
                    <div class="login-center-input">
                        <input type="text" name="userUnum" id="username" value="" placeholder="输入账号" onfocus="this.placeholder=''" onblur="this.placeholder='输入账号'"/>
                        <div class="login-center-input-text">输入账号</div>
                    </div>
                </div>
                <div class="login-center clearfix">
                    <div class="login-center-img"><img src="${pageContext.request.contextPath}/static/images/password.png"/></div>
                    <div class="login-center-input">
                        <input type="password" name="userPassword" id="password" value="" placeholder="输入密码" onfocus="this.placeholder=''" onblur="this.placeholder='输入密码'"/>
                        <div class="login-center-input-text">输入密码</div>
                    </div>
                </div>
                <input class="login-button" type="submit" value="登录" style="display:block;border: none;margin-top:50px;margin-left:217px" />
                <div class="cj-dv"><a href="" class="cj-txt">Fosuny</a></div>
                <!-- 模板默认的按钮，因为没有无法实现提交功能被注释掉 -->
                <!-- <div class="login-button">
                    登录
                </div> -->
            </div>
            <div class="sk-rotating-plane"></div>
        </form>
    </div>
    <!-- scripts -->
    <script src="${pageContext.request.contextPath}/static/js/login/particles.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/login/app.js"></script>
    <script type="text/javascript">
        if(window !=top){
            top.location.href = location.href;
        }
        function hasClass(elem, cls) {
            cls = cls || '';
            if (cls.replace(/\s/g, '').length == 0) return false; //当cls没有参数时，返回false
            return new RegExp(' ' + cls + ' ').test(' ' + elem.className + ' ');
        }

        function addClass(ele, cls) {
            if (!hasClass(ele, cls)) {
                ele.className = ele.className == '' ? cls : ele.className + ' ' + cls;
            }
        }

        function onblur(unum){
            ${user.name}
        }

        function removeClass(ele, cls) {
            if (hasClass(ele, cls)) {
                var newClass = ' ' + ele.className.replace(/[\t\r\n]/g, '') + ' ';
                while (newClass.indexOf(' ' + cls + ' ') >= 0) {
                    newClass = newClass.replace(' ' + cls + ' ', ' ');
                }
                ele.className = newClass.replace(/^\s+|\s+$/g, '');
            }
        }
        document.querySelector(".login-button").onclick = function(){
            addClass(document.querySelector(".login"), "active")
            setTimeout(function(){
                addClass(document.querySelector(".sk-rotating-plane"), "active")
                document.querySelector(".login").style.display = "none"
            },800)
            setTimeout(function(){
                removeClass(document.querySelector(".login"), "active")
                removeClass(document.querySelector(".sk-rotating-plane"), "active")
                document.querySelector(".login").style.display = "block"
                //alert("登录成功")

            },5000)
        }
    </script>
</body>
</html>
