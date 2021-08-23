<%--
  Created by IntelliJ IDEA.
  User: Fosuny
  Date: 2021/4/28
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>HuachangPurchase 项目审核 iframe 框</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/css/layui.css" media="all">
</head>
<body>
<c:forEach items="${list}" var="list">
<div class="layui-form" lay-filter="layuiadmin-form-order" id="layuiadmin-form-order" style="padding: 20px 30px 0 0;">
    <form action="${pageContext.request.contextPath}/project/datatrue" method="post" id="from">

        <input type="number" name="pjId" value="${list.pjId}" style="display: none">

        <div class="layui-form-item"style="margin-top: -5px">
            <label class="layui-form-label">项目名称</label>
            <div class="layui-input-inline">
                <input type="text" name="pjName" lay-verify="required" value="${list.pjName}" placeholder="项目名称..." autocomplete="off" class="layui-input" disabled="disabled">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">项目类型</label>
            <div class="layui-input-inline">
                <select name="pjType" disabled="disabled" id="pjType1">
                    <option value="1">食品</option>
                    <option value="2">数码电子</option>
                    <option value="3">能源储蓄</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">产品名称</label>
            <div class="layui-input-inline">
                <input type="text" name="pjPurchaseName" lay-verify="required" value="${list.pjPurchaseName}" placeholder="产品名称..." autocomplete="off" class="layui-input" disabled="disabled">
            </div>
        </div>
        <div class="layui-form-item" id="pjPrice">
            <label class="layui-form-label">产品单价</label>
            <div class="layui-input-inline">
                <input type="text" name="pjPrice" lay-verify="required" value="${list.pjPrice}" placeholder="产品单价..." autocomplete="off" class="layui-input" disabled="disabled">
            </div>
        </div>
        <div class="layui-form-item" id="pjCount">
            <label class="layui-form-label">产品数量</label>
            <div class="layui-input-inline">
                <input type="text" name="pjCount" lay-verify="required" value="${list.pjCount}" placeholder="产品数量..." autocomplete="off" class="layui-input" disabled="disabled">
            </div>
        </div>
        <div class="layui-form-item" id="pjTotalPrice">
            <label class="layui-form-label">产品总价</label>
            <div class="layui-input-inline">
                <input type="text" name="pjTotalPrice" lay-verify="required" value="${list.pjTotalPrice}" placeholder="产品总价..." autocomplete="off" class="layui-input" disabled="disabled">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">是否紧急</label>
            <div class="layui-input-inline">
                <select name="pjLevel" disabled="disabled" id="pjLevel1">
                    <option value="1">紧急</option>
                    <option value="2" >普通</option>
                    <option value="3">可延缓</option>
                    <option value="4">较紧急</option>
                </select>
            </div>
        </div>
        <%--初审打回--%>
        <div class="layui-form-item layui-form-text" id="Text-field1" style="display: none" >
            <label class="layui-form-label">打回原因</label>
            <div class="layui-input-block">
                <textarea placeholder="请注明不通过原因......" disabled="disabled" id="oncereason" name="pjOnceReason" class="layui-textarea"></textarea>

            </div>
        </div>
        <%--隐藏-返回值--%>
        <input type="text" name="pjStatus" lay-verify="required" value="${list.pjStatus}" class="layui-input" style="display: none">
        <%--终审打回--%>
        <div class="layui-form-item layui-form-text" id="Text-field2" style="display: none" >
            <label class="layui-form-label">打回原因</label>
            <div class="layui-input-block">
                <textarea placeholder="请注明不通过原因......" disabled="disabled" lay-verify="required" id="lastreason" name="pjLastReason" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-form-item" style="width: 90px;margin-left: 30px;display: none" id="layuireturndiv">
            <a class="layui-btn layui-btn-primary" onclick="layuireturn()" ><i class="layui-icon layui-icon-edit"></i>返回重审</a>
        </div>
        <div class="layui-form-item" style="width: 90px;margin-left: 30px;display: none" id="a2">
            <a id="layuitrturn" href="${pageContext.request.contextPath}/project/datatrue?pjId=${list.pjId}&pjStatus=${list.pjStatus}" value="提交"></a>
        </div>
        <div class="layui-form-item" id="subix">
            <input type="button" class="layui-btn layui-btn-primary" onclick="btnbtn()" id="LAY-app-btn-submit" value="不通过" style="float: left;margin-left: 30px">
            <div class="layui-form-mid layui-word-aux" style="float: left;margin-left: 10px">若项目合格可直接提交~视为通过</div>
        </div>
        <div class="layui-form-item layui-hide">
            <input type="submit" lay-submit lay-filter="LAY-app-workorder-submit" href="${pageContext.request.contextPath}/project/datatrue?pjId=${list.pjId}&pjStatus=${list.pjStatus}" id="LAY-app-workorder-submit" value="提交"/>
        </div>
    </form>
</div>

<script src="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/layui.js"></script>
<script>
    function btnbtn(){
        var reason1 = document.getElementById('oncereason'),reason2 = document.getElementById('lastreason')

        var price = document.getElementById('pjPrice'),count = document.getElementById('pjCount'),subix = document.getElementById('subix'),a2 = document.getElementById('a2'),
            total = document.getElementById('pjTotalPrice'),textfield1 = document.getElementById('Text-field1'),textfield2 = document.getElementById('Text-field2'),layuireturn = document.getElementById("layuireturndiv");
        price.style.display="none",count.style.display="none",total.style.display="none",layuireturndiv.style.display="block",layuireturn.style.display="block",subix.style.display="none",a2.style.display="block";

        let action = "${pageContext.request.contextPath}/project/datafalse"
        document.getElementById('from').setAttribute("action",action)

        let num = ${list.pjStatus}
        if(num === 1 || num ===2){

            textfield1.style.display="block"
            reason1.removeAttribute("disabled")


        }else if(num === 3 || num === 4){

            textfield2.style.display="block"
            reason2.removeAttribute("disabled")

        };

    }
    function layuireturn(){
        /*禁用input文本框*/
        var reason1 = document.getElementById('oncereason').disabled="disabled",reason2 = document.getElementById('lastreason').disabled="disabled"

        var price = document.getElementById('pjPrice'),count = document.getElementById('pjCount'),subix = document.getElementById('subix'),total = document.getElementById('pjTotalPrice'),
            textfield1 = document.getElementById('Text-field1'),textfield2 = document.getElementById('Text-field2'),a2 = document.getElementById("a2");
        price.style.display="block",count.style.display="block",total.style.display="block",textfield1.style.display="none",
            textfield1.style.display="none",subix.style.display="block",layuireturndiv.style.display="none",a2.style.display="none";

        let action = "${pageContext.request.contextPath}/project/datatrue"
        document.getElementById('from').setAttribute("action",action)

    }
    /*$("#pjType1").attr("option:selected","option:selected").val(${list.pjType});
    $("#pjLevel1").attr("option:selected","option:selected").val(${list.pjLevel});*/

    layui.config({
        base: '${pageContext.request.contextPath}/static/layui-v2.5.7/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form'], function(){
        var $ = layui.$
            ,form = layui.form;

    })
</script>
</c:forEach>
</body>
</html>