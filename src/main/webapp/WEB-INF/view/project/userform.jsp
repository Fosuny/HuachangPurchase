<%--
  Created by IntelliJ IDEA.
  User: Fosuny
  Date: 2021/4/24
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>项目管理的 iframe 框</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/css/layui.css" media="all">
    <script>
        /*进行总价运算*/
        function cal(){
            document.getElementById("pjTotalPrice").value=(parseInt(document.getElementById("pjPrice").value)*parseInt(document.getElementById("pjCount").value));
        }
    </script>
</head>
<body>
<form action="${pageContext.request.contextPath}/project/updateData" method="post">
<div class="layui-form" lay-filter="layuiadmin-form-useradmin" id="layuiadmin-form-useradmin" style="padding: 20px 0 0 0;">
    <c:forEach items="${list}" var="project">
    <div class="layui-form-item" style="display: none">
        <label class="layui-form-label">ID隐藏域</label>
        <div class="layui-input-inline">
            <input type="text" name="pjId" lay-verify="required" value="${project.pjId}" placeholder="ID隐藏域" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">项目名称</label>
        <div class="layui-input-inline">
            <input type="text" name="pjName" lay-verify="required" value="${project.pjName}" placeholder="请输入项目名" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">项目类型</label>
        <div class="layui-input-inline">
            <select name="pjType">
                <option value="1">食品</option>
                <option value="2">数码电子</option>
                <option value="3">能源储蓄</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">产品名称</label>
        <div class="layui-input-inline">
            <input type="text" name="pjPurchaseName" lay-verify="title" value="${project.pjPurchaseName}" placeholder="请输入产品名称" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">单价</label>
        <div class="layui-input-inline">
            <input type="text" name="pjPrice" id="pjPrice" lay-verify="required" onblur="cal()" value="${project.pjPrice}" placeholder="￥" autocomplete="off" class="layui-input" >
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">数目</label>
        <div class="layui-input-inline">
            <input type="text" name="pjCount" id="pjCount" lay-verify="required" onblur="cal()" value="${project.pjCount}" <%--onblur=""--%> placeholder="￥" autocomplete="off" class="layui-input" >
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">总价</label>
        <div class="layui-input-inline">
            <input type="text" readonly="readonly" id="pjTotalPrice" name="pjTotalPrice" lay-verify="required" value="${project.pjTotalPrice}" placeholder="￥" autocomplete="off" class="layui-input" >
        </div>
        <div class="layui-form-mid layui-word-aux">总价不可输入</div>
    </div>
    <div class="layui-form-item" lay-filter="sex">
        <label class="layui-form-label">是否紧急</label>
        <div class="layui-input-inline">
            <select name="pjLevel">
                <option value="1">紧急</option>
                <option value="2">普通</option>
                <option value="3">可延缓</option>
                <option value="4">较紧急</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item" style="display: none">
        <input type="submit" class="layui-btn layui-btn-normal" lay-submit lay-filter="LAY-user-front-submit" id="LAY-user-front-submit" style="margin-top: 13px;float: right;margin-right: 35px" onclick="window.close();" value="确认提交">
    </div>
    </c:forEach>
</div>
</form>
<script src="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/layui.js"></script>
<script>
    layui.config({
        base: '${pageContext.request.contextPath}/static/layui-v2.5.7/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'upload'], function(){
        var $ = layui.$
            ,form = layui.form
            ,upload = layui.upload ;

        upload.render({
            elem: '#layuiadmin-upload-useradmin'
            ,url: layui.setter.base +'${pageContext.request.contextPath}/project/updateData'
            ,method: 'post'
            ,done: function(res){
                $(this.item).prev("div").children("input").val(res.data.src)
            }
        });
    })
</script>
</body>
</html>