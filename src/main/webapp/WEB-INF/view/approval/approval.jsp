<%--
  Created by IntelliJ IDEA.
  User: Fosuny
  Date: 2021/4/21
  Time: 20:58
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
    <script>
        /*进行总价运算*/
        function cal(){
            document.getElementById("pjTotalPrice").value=(parseInt(document.getElementById("pjPrice").value)*parseInt(document.getElementById("pjCount").value));
        }
    </script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>新建采购项目</legend>
</fieldset>

<form class="layui-form" action="${pageContext.request.contextPath}/project/pjCreate" method="post">
    <div class="layui-form-item"style="margin-right: 100px">
        <label class="layui-form-label">项目名称</label>
        <div class="layui-input-block">
            <input type="text" name="pjName" lay-verify="title" autocomplete="off" placeholder="请输入项目名称" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item"style="margin-right: 100px">
        <label class="layui-form-label">产品名称</label>
        <div class="layui-input-block">
            <input type="text" name="pjPurchaseName" lay-verify="required" lay-reqtext="产品名称是必填项，岂能为空？" placeholder="请输入产品名称" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item"style="margin-right: 100px">
        <label class="layui-form-label">项目编号</label>
        <div class="layui-input-block">
            <input type="text" name="pjNumber" lay-verify="required" lay-reqtext="项目编号为必填项，请输入" placeholder="请输入项目编号" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">开始日期</label>
            <div class="layui-input-inline">
                <input type="tel" name="pjCreateDate" id="date" lay-verify="date" placeholder="年-月-日" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">结束日期</label>
            <div class="layui-input-inline">
                <input type="tel" name="pjEndDate" id="date1" lay-verify="date" placeholder="年-月-日" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">产品单价</label>
            <div class="layui-input-inline">
                <input type="text" name="pjPrice" id="pjPrice" onblur="cal()" lay-verify="required|number" placeholder="￥" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">产品数量</label>
            <div class="layui-input-inline">
                <input type="tel" name="pjCount" id="pjCount" onblur="cal()" lay-verify="required|number" placeholder="请输入产品数目" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">产品总价</label>
            <div class="layui-input-inline">
                <input type="text" name="pjTotalPrice" readonly="readonly" id="pjTotalPrice" lay-verify="required|number" placeholder="￥" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">总价不可输入</div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">项目状态</label>
        <div class="layui-input-inline">
            <select name="pjStatus">
                <option value="1" selected="">待审核</option>
                <option value="初审打回">初审打回</option>
                <option value="初审成功">初审成功</option>
                <option value="待终审">待终审</option>
                <option value="终审打回">终审打回</option>
                <option value="终审成功">终审成功</option>
                <option value="作废">作废</option>
                <option value="已结束">已结束</option>
                <option value="已失效">已失效</option>
                <option value="待评价">待评价</option>
                <option value="评价完成">评价完成</option>
            </select>
        </div>
        <label class="layui-form-label">处理需求</label>
        <div class="layui-input-inline">
            <select name="pjLevel">
                <option value="1">紧急</option>
                <option value="2" selected="">普通</option>
                <option value="3">可延缓</option>
                <option value="4">较紧急</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">项目类型</label>
        <div class="layui-input-inline">
            <select name="pjType">
                <option value="" selected="">请选择项目类型</option>
                <option value="1">食品</option>
                <option value="2">数码电子</option>
                <option value="3">能源储蓄</option>
            </select>
        </div>
        <div class="layui-form-mid layui-word-aux">请选择产品类型</div>
    </div>
    <div class="layui-form-item layui-form-text"style="margin-right: 100px">
        <label class="layui-form-label">项目备注</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入该项目需要备注的注意事项" name="pjRemarks" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <%--<button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal" lay-filter="demo1">居中弹出</button>--%>
            <button data-method="offset" type="submit" class="layui-btn layui-btn-normal" data-type="auto">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<script src="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 3){
                    return '标题为必填项';
                }
            }
            ,pass: [
                /^[\S]{6,12}$/
                ,'密码必须6到12位，且不能出现空格'
            ]
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });
        //监听指定开关
        form.on('switch(switchTest)', function(data){
            layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips( data.othis)
        });
    });
</script>
</body>
</html>
