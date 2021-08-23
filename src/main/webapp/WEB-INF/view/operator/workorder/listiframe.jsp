<%--
  Created by IntelliJ IDEA.
  User: Fosuny
  Date: 2021/4/28
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>华昌采购 | 项目审核</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.5.7/style/admin.css" media="all">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"></script>

</head>
<body>
<form action="" method="post">
    <div class="layui-fluid">
        <div class="layui-card">
            <div class="layui-form layui-card-header layuiadmin-card-header-auto">
                <div class="layui-form-item">
                    <div style="float :left;">
                        <button class="layui-btn layuiadmin-btn-useradmin" data-type="add">刷新页面</button>
                    </div>
                    <div class="layui-inline" style="margin-left: -60px;float: left">
                        <div class="layui-input-block">
                            <input type="text" name="orderid" placeholder="输入产品名称" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline" style="margin-left: -60px;float: left">
                        <div class="layui-input-block">
                            <input type="text" id="date" name="attr" placeholder="选择生产日期" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline" style="margin-left: -60px;float: left">
                        <div class="layui-input-block">
                            <input type="text" id="date1" name="attr" placeholder="保质期" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-input-inline" style="margin-left: 50px;float: left">
                        <select name="pjType">
                            <option value="" selected="">选择产品类型</option>
                            <option value="1">食品</option>
                            <option value="2">数码电子</option>
                            <option value="3">能源储蓄</option>
                        </select>
                    </div>
                    <%--搜索按钮--%>
                    <div class="layui-inline"style="float: right">
                        <button class="layui-btn layuiadmin-btn-order" lay-submit lay-filter="LAY-app-order-search">
                            <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div class="layui-card-body" style="margin-top: -10px">
                <div class="layui-form-item">

                </div>
                <table class="layui-table" id="system-order-table">
                    <colgroup>
                        <col width="60">
                        <col width="180">
                        <col width="170">
                        <col width="170">
                        <col width="180">
                        <col width="150">
                        <col width="150">
                        <col>
                    </colgroup>
                    <thead>
                        <tr>
                            <th style="text-align: center">序号</th>
                            <th style="text-align: center">产品名称</th>
                            <th style="text-align: center">产品类型</th>
                            <th style="text-align: center">产品价格</th>
                            <th style="text-align: center">生产日期</th>
                            <th style="text-align: center">保质期</th>
                            <th style="text-align: center">时间单位</th>
                            <th style="text-align: center">操作</th>
                        </tr>
                    </thead>
                    <tbody id="system-order"></tbody>
                </table>
                <div id="demo7" style="text-align: center"></div>
                <script type="text/html" id="progressTpl">
                    <div class="layui-progress layuiadmin-order-progress" lay-filter="progress-"+ {{ d.orderid }}>
                    <div class="layui-progress-bar layui-bg-blue" lay-percent= {{ d.progress }}></div>
                    </div>
                </script>
                <script type="text/html" id="buttonTpl">
                    {{#  if(d.state == '已处理'){ }}
                    <button class="layui-btn layui-btn-normal layui-btn-xs">已处理</button>
                    {{#  } else if(d.state == '未分配'){ }}
                    <button class="layui-btn layui-btn-primary layui-btn-xs">未分配</button>
                    {{#  } else{ }}
                    <button class="layui-btn layui-btn-warm layui-btn-xs">处理中</button>
                    {{#  } }}
                </script>
                <script type="text/html" id="table-system-order">
                    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="edit"><i class="layui-icon layui-icon-edit"></i>编辑</a>
                </script>
            </div>
        </div>
    </div>
</form>
<script src="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/layui.js"></script>

<script>
    layui.config({
        base: '${pageContext.request.contextPath}/static/layui-v2.5.7/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'workorder', 'table'], function(){
        var $ = layui.$
            ,form = layui.form
            ,table = layui.table;

        //监听搜索
        form.on('submit(LAY-app-order-search)', function(data){
            var field = data.field;

            //执行重载
            table.reload('LAY-app-system-order', {
                where: field
            });
        });
    });
    $(document).ready(function (){
        $.ajax({
            url:'${pageContext.request.contextPath}/project/reviewData',
            type:'post',
            dataType:'json',
            success:function (data){
                let html = '';
                for(let i=0;i<data.length;i++){
                    sum = i+1;
                    html +="<tr>"+
                        "<td style='text-align: center'>"+sum+"</td>"+
                        "<td style='text-align: center'>"+data[i].pjNumber+"</td>"+
                        "<td style='text-align: center'>"+data[i].pjName+"</td>"+
                        "<td style='text-align: center'>"+data[i].pjPurchaseName+"</td>"+
                        "<td style='text-align: center'>"+data[i].pjPrice+"</td>"+
                        "<td style='text-align: center'>"+data[i].pjCount+"</td>"+
                        "<td style='text-align: center'>"+data[i].pjTotalPrice+"</td>"+
                        "<td style='text-align: center'>"+
                            "<a class=\"layui-btn layui-btn-normal layui-btn-xs\" lay-event=\"edit\" onclick='review("+data[i].pjId+")'><i class=\"layui-icon layui-icon-edit\"></i>编辑</a>"+
                            "<a class=\"layui-btn layui-btn-danger layui-btn-xs\" lay-event=\"del\" id=\"formId\" onclick=\"sub\"><i class=\"layui-icon layui-icon-delete\"></i>删除</a>"+
                        "</td>"+
                        "</tr>"
                }
                $("#system-order").html(html);
            }
        })
    })

    /*供应商管理iframe框*/
    function review(pjId){
        layer.open({
            type:2,
            title:"的产品",
            content:"${pageContext.request.contextPath}/operator/operatoriframe?pjId="+pjId,
            maxmin:!0,
            area:["1000px","620px"],
            btn:["提交","取消"],
            yes:function(e,t){
                var r=window["layui-layer-iframe"+e],
                    l="LAY-app-workorder-submit",
                    o=t.find("iframe").contents().find("#"+l);
                r.layui.form.on("submit("+l+")",
                    function(t){
                        t.field;
                            layer.close(e)
                    }),
                    o.trigger("click")},
            success:function(e,t){}
        })
    }
    //调用laypage来实现下面的分页功能
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        //分页功能
        laypage.render({
            elem: 'demo7'
            /*总条数*/
            ,count:17
            /*起始页*/
            ,curr:location.hash.replace('#!fenye=', '1') //获取起始页
            /*自定义hash值*/
            ,hash: 'fenye'
            /*连续也出现的页码数*/
            ,groups:5
            /*自定义排版*/
            ,layout: ['count', 'prev', 'page', 'next', 'skip']
            ,jump: function(obj,first){
                //首次不执行
                if(!first){
                    //do something
                }
            }
        });

    });
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
        laydate.render({
            elem: '#date2'
        });
        laydate.render({
            elem: '#date3'
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
