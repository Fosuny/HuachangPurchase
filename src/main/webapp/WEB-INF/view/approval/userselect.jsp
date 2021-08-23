<%--
  Created by IntelliJ IDEA.
  User: Fosuny
  Date: 2021/4/23
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/css/layui.css"  media="all">
</head>
<body>

<table class="layui-table" lay-data="{height: 'full-200', cellMinWidth: 80, page: true, limit:30, url:'/demo/table/user/'}">
    <thead>
    <tr>
        <th lay-data="{type:'checkbox'}">ID</th>
        <th lay-data="{field:'id', width:100, sort: true}">ID</th>
        <th lay-data="{field:'username', width:100}">用户名</th>
        <th lay-data="{field:'sex', width:100, sort: true}">性别</th>
        <th lay-data="{field:'sign', minWidth: 150}">签名</th>
        <th lay-data="{field:'experience', sort: true, align: 'right'}">积分</th>
        <th lay-data="{field:'score', sort: true, minWidth: 100, align: 'right'}">评分</th>
    </tr>
    </thead>
</table>


<script src="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('table', function(){
        var table = layui.table;


    });
</script>

</body>
</html>
