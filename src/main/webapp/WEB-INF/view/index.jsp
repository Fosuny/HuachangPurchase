<%--
  Created by IntelliJ IDEA.
  User: Fosuny
  Date: 2021/4/21
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>华昌采购后台管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.5.7/style/admin.css" media="all">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/images/favicon.ico">
    <script>
        function getDateDemo(){
            var myDate = new Date();
            var year = myDate.getFullYear();
            var month = myDate.getMonth() + 1;
            var date = myDate.getDate();
            var hours = myDate.getHours();
            var minutes = myDate.getMinutes();
            var seconds = myDate.getSeconds();

            //月份的显示为两位数字如09月
            if(month < 10 ){
                month = "0" + month;
            }
            if(date < 10 ){
                date = "0" + date;
            }

            //时间拼接
            var dateTime =  year + " / " + month + " / " + date +" — "+ hours + " : " + minutes + " : " + seconds ;

            //document.write(dateTime);//打印当前时间

            var divNode = document.getElementById("time");
            divNode.innerHTML = dateTime;

        }
        window.setInterval("getDateDemo()",1000);//每隔1秒，调用一次getDateDemo()
    </script>
</head>
<body class="layui-layout-body">

<div id="LAY_app">
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header">
            <!-- 头部区域 -->
            <ul class="layui-nav layui-layout-left">
                <li class="layui-nav-item layadmin-flexible" lay-unselect>
                    <a href="javascript:;" layadmin-event="flexible" title="侧边伸缩">
                        <i class="layui-icon layui-icon-shrink-right" id="LAY_app_flexible"></i>
                    </a>
                </li>
                <li class="layui-nav-item" lay-unselect>
                    <a href="javascript:;" layadmin-event="refresh" title="刷新">
                        <i class="layui-icon layui-icon-refresh-3"></i>
                    </a>
                </li>
                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <input type="text" placeholder="搜索..." autocomplete="off" class="layui-input layui-input-search" layadmin-event="serach" lay-action="template/search.html?keywords=" style="margin-top: 8px;width: 400px">
                </li>
                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <div id="time" style="color: #9F9F9F;font-size:18px;margin-left:-10px;text-align:center"></div>
                </li>
            </ul>
            <ul class="layui-nav layui-layout-right" lay-filter="layadmin-layout-right">

                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="javascript:;" layadmin-event="theme">
                        <i class="layui-icon layui-icon-theme"></i>
                    </a>
                </li>
                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="javascript:;" layadmin-event="note">
                        <i class="layui-icon layui-icon-note"></i>
                    </a>
                </li>
                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="javascript:;" layadmin-event="fullscreen">
                        <i class="layui-icon layui-icon-screen-full"></i>
                    </a>
                </li>
                <li class="layui-nav-item" lay-unselect>
                    <a href="javascript:;">
                        <img style="width:25px;height:25px;border-radius:25px;margin-top:-5px;margin-right: 10px" src="${pageContext.request.contextPath}/static/images/1.jpg" >
                        <cite>孙沛然</cite>
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a lay-href="${pageContext.request.contextPath}/login/set"style="text-align: center;">基本资料</a></dd>
                        <dd><a lay-href="${pageContext.request.contextPath}/login/password" style="text-align: center;">修改密码</a></dd>
                        <hr>
                        <dd layadmin-event="logout" style="text-align: center;"><a>退出登陆</a></dd>
                    </dl>
                </li>

                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="javascript:;" layadmin-event="about"><i class="layui-icon layui-icon-more-vertical"></i></a>
                </li>
                <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-unselect>
                    <a href="javascript:;" layadmin-event="more"><i class="layui-icon layui-icon-more-vertical"></i></a>
                </li>
            </ul>
        </div>

        <!-- 侧边菜单 -->
        <div class="layui-side layui-side-menu">
            <div class="layui-side-scroll">
                <div class="layui-logo" lay-href="${pageContext.request.contextPath}/hcIndex/homepage">
                    <span>华昌采购管理系统</span>
                </div>

                <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu" lay-filter="layadmin-system-side-menu">
                    <li data-name="home" class="layui-nav-item layui-nav-itemed">
                        <a lay-href="${pageContext.request.contextPath}/hcIndex/homepage" lay-tips="系统首页" lay-direction="2"><i class="layui-icon layui-icon-home"></i><cite>系统首页</cite></a>
                    </li>
                    <li data-name="component" class="layui-nav-item">
                        <a href="javascript:;" lay-tips="询价管理" lay-direction="2">
                            <i class="layui-icon layui-icon-senior"></i>
                            <cite>询价管理</cite>
                        </a>
                        <dl class="layui-nav-child">

                            <dd data-name="button">
                                <a lay-href="${pageContext.request.contextPath}/hcIndex/approval">项目立项</a>
                            </dd>
                            <dd data-name="util">
                                <a lay-href="${pageContext.request.contextPath}/project/pjse">项目管理</a>
                            </dd>
                        </dl>
                    </li>
                    <li data-name="template" class="layui-nav-item">
                        <a href="javascript:;" lay-tips="订单管理" lay-direction="2">
                            <i class="layui-icon layui-icon-template"></i>
                            <cite>订单管理</cite>
                        </a>
                        <dl class="layui-nav-child">
                            <dd><a lay-href="${pageContext.request.contextPath}/project/pjgd">项目审核</a></dd>
                        </dl>
                    </li>
                    <li data-name="app" class="layui-nav-item">
                        <a href="javascript:;" lay-tips="应用" lay-direction="2">
                            <i class="layui-icon layui-icon-app"></i>
                            <cite>组织管理</cite>
                        </a>
                        <dl class="layui-nav-child">

                            <dd>
                                <a lay-href="${pageContext.request.contextPath}/operator/operatorCreate">供应商新增</a>
                            </dd>
                            <dd>
                                <a lay-href="${pageContext.request.contextPath}/operator/operatorQuery">供应商管理</a>
                            </dd>
                            <dd data-name="workorder">
                                <a lay-href="${pageContext.request.contextPath}/operator/userQuery">职工管理</a>
                            </dd>
                        </dl>
                    </li>
                    <li data-name="set" class="layui-nav-item">
                        <a href="javascript:;" lay-tips="设置" lay-direction="2">
                            <i class="layui-icon layui-icon-set"></i>
                            <cite>我的设置</cite>
                        </a>
                        <dl class="layui-nav-child">
                            <dd><a lay-href="${pageContext.request.contextPath}/login/set">基本资料</a></dd>
                            <dd><a lay-href="${pageContext.request.contextPath}/login/password">修改密码</a></dd>
                        </dl>
                    </li>
                    <%--百度: lay-href="http://www.layui.com/admin/#get"--%>
                    <li data-name="get" class="layui-nav-item">
                        <a href="javascript:;" lay-tips="授权" lay-direction="2">
                            <i class="layui-icon layui-icon-auz"></i>
                            <cite>授权管理</cite>
                        </a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="javascript:;">
                                    用户权限管理
                                </a>
                            </dd>
                        </dl>
                    </li>
                    <li data-name="senior" class="layui-nav-item">
                        <a href="javascript:;" lay-tips="站长信息" lay-direction="2">
                            <i class="layui-icon layui-icon-service"></i>
                            <cite>站长信息</cite>
                        </a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="javascript:;">
                                    <i class="layui-icon layui-icon-login-qq"></i>
                                    QQ
                                </a>
                            </dd>
                            <dd data-name="echarts">
                                <a href="javascript:;">
                                    <i class="layui-icon layui-icon-login-wechat"></i>
                                    WeChat
                                </a>
                            </dd>

                            <dd data-name="echarts">
                                <a href="javascript:;">
                                    <i class="layui-icon layui-icon-login-weibo"></i>
                                    微博
                                </a>
                            </dd>
                        </dl>
                    </li>
                </ul>

            </div>
        </div>

        <!-- 页面标签 -->
        <div class="layadmin-pagetabs" id="LAY_app_tabs">
            <div class="layui-icon layadmin-tabs-control layui-icon-prev" layadmin-event="leftPage"></div>
            <div class="layui-icon layadmin-tabs-control layui-icon-next" layadmin-event="rightPage"></div>
            <div class="layui-icon layadmin-tabs-control layui-icon-down">
                <ul class="layui-nav layadmin-tabs-select" lay-filter="layadmin-pagetabs-nav">
                    <li class="layui-nav-item" lay-unselect>
                        <a href="javascript:;"></a>
                        <dl class="layui-nav-child layui-anim-fadein">
                            <dd layadmin-event="closeThisTabs"><a href="javascript:;">关闭当前标签页</a></dd>
                            <dd layadmin-event="closeOtherTabs"><a href="javascript:;">关闭其它标签页</a></dd>
                            <dd layadmin-event="closeAllTabs"><a href="javascript:;">关闭全部标签页</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
            <div class="layui-tab" lay-unauto lay-allowClose="true" lay-filter="layadmin-layout-tabs">
                <ul class="layui-tab-title" id="LAY_app_tabsheader">
                    <li lay-id="home/console.html" lay-attr="home/console.html" class="layui-this"><i class="layui-icon layui-icon-home"></i></li>
                </ul>
            </div>
        </div>


        <!-- 主体内容 -->
        <div class="layui-body" id="LAY_app_body">
            <div class="layadmin-tabsbody-item layui-show">
                <iframe src="${pageContext.request.contextPath}/hcIndex/homepage" frameborder="0" class="layadmin-iframe"></iframe>
            </div>
        </div>

        <!-- 辅助元素，一般用于移动设备下遮罩 -->
        <div class="layadmin-body-shade" layadmin-event="shade"></div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/layui.js"></script>
<script>
    layui.config({
        base: '${pageContext.request.contextPath}/static/layui-v2.5.7/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use('index');
</script>
</body>
</html>
