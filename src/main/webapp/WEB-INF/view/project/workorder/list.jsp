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
<%--<form id="saveReportForm" action="${pageContext.request.contextPath}/project/reviewDataLike" onsubmit="return saveReport();" method="post">--%>
    <div class="layui-fluid">
        <div class="layui-card">
            <div class="layui-form layui-card-header layuiadmin-card-header-auto">
                <div class="layui-form-item">
                    <div style="text-align: center;margin-left: -200px">
                        <button class="layui-btn" style="background-color:rgb(242,242,242);color:black;font-weight:500;font-family:'微软雅黑';border-top: solid 3px rgb(0,150,136)">华昌采购管理系统 - 项目审核信息表</button>
                    </div>
                </div>
            </div>
            <div class="layui-card-body" style="margin-top: 10px">
                <div class="layui-form-item">
                    <div class="layui-inline" style="float: left">
                        <label class="layui-form-label">项目编号</label>
                        <div class="layui-input-block">
                            <input type="text" name="pjNumber" id="pjNumber" placeholder="项目编号..." autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline" style="float: left">
                        <label class="layui-form-label">项目名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="pjName" id="pjName" placeholder="项目名称..." autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline" style="float: left">
                        <label class="layui-form-label">产品名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="pjPurchaseName" id="pjPurchaseName" placeholder="产品名称..." autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline" style="float: left">
                        <label class="layui-form-label">审核时间</label>
                        <div class="layui-input-block">
                            <input type="text" id="date" name="pjUpdateDate" placeholder="年 / 月 / 日" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline" style="float: left">
                        <label class="layui-form-label">产品数目</label>
                        <div class="layui-input-block">
                            <input type="number" name="pjCount" id="pjCount" placeholder="产品数量..." autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <%--搜索按钮--%>
                    <div class="layui-inline"style="float: right">
                        <button class="layui-btn layuiadmin-btn-useradmin" id="ss" type="button"><i class="layui-icon layui-icon-search layuiadmin-button-btn"></i></button>
                    </div>
                </div>
                <table class="layui-table" id="system-order-table">
                    <colgroup>
                        <col width="60">
                        <col width="180">
                        <col width="180">
                        <col width="180">
                        <col width="180">
                        <col width="180">
                        <col width="180">
                        <col width="180">
                        <col width="180">
                        <col>
                    </colgroup>
                    <thead>
                        <tr>
                            <th style="text-align: center">序号</th>
                            <th style="text-align: center">项目编号</th>
                            <th style="text-align: center">项目名称</th>
                            <th style="text-align: center">产品名称</th>
                            <th style="text-align: center">产品单价</th>
                            <th style="text-align: center">产品数目</th>
                            <th style="text-align: center">产品总价</th>
                            <th style="text-align: center">项目状态</th>
                            <th style="text-align: center">审核时间</th>
                            <th style="text-align: center">操作</th>
                        </tr>
                    </thead>
                    <tbody id="system-order"></tbody>
                </table>
                <div id="demo7" style="text-align: center"></div>
            </div>
        </div>
    </div>
<%--</form>--%>
<script src="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/layui.js"></script>

<script>
    /*定义一个当前页的页码值*/
    var pageCurr = 1;
    /*定义每页显示的条数*/
    var pageLimit = 14;
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
    /*数据全部查询*/
    $(document).ready(function page(){
        $.ajax({
            url:'${pageContext.request.contextPath}/project/reviewData?page='+pageCurr+'&limit='+pageLimit,
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
                        "<td style='text-align: center'>"+data[i].pjStatus+"</td>"+
                        "<td style='text-align: center'>"+data[i].pjUpdateDate+"</td>"+
                        "<td style='text-align: center'>"+
                            "<a class=\"layui-btn layui-btn-normal layui-btn-xs\" lay-event=\"edit\" onclick='review("+data[i].pjId+")'><i class=\"layui-icon layui-icon-edit\"></i>审核项目</a>"+
                        "</td>"+
                        "</tr>"
                }
                $("#system-order").html(html);
                //调用laypage来实现下面的分页功能
                layui.use(['laypage', 'layer'], function (){
                    var laypage = layui.laypage
                        ,layer = layui.layer;

                    //分页功能
                    laypage.render({
                        elem: 'demo7'
                        /*总条数*/
                        ,count:${count}
                        /*每页显示条数*/
                        ,limit:pageLimit
                        /*起始页*/
                        ,curr:pageCurr
                        /*连续也出现的页码数*/
                        ,groups:5
                        /*自定义主题颜色*/
                        ,theme:'#1E9FFF'
                        /*自定义排版*/
                        ,layout: ['count', 'prev', 'page', 'next', 'skip']
                        ,jump: function(obj,first){
                            //首次不执行
                            if(!first){
                                //do something
                                pageCurr = this.curr;
                                page(this.curr)

                            }
                        }
                    });
                });
            }
        })
    })
    /*条件查询*/
   $("#ss").click(function page(){
        $.ajax({
            url:'${pageContext.request.contextPath}/project/reviewDataLike?page='+pageCurr+'&limit='+pageLimit,
            type:'post',
            data:{
                "pjNumber":$("#pjNumber").val(),
                "pjName":$("#pjName").val(),
                "pjCount":$("#pjCount").val(),
                "pjPurchaseName":$("#pjPurchaseName").val(),
                "pjUpdateDate":$("#date").val(),
            },
            dataType:'json',
            success:function (data){
                console.log(data)
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
                        "<td style='text-align: center'>"+data[i].pjStatus+"</td>"+
                        "<td style='text-align: center'>"+data[i].pjUpdateDate+"</td>"+
                        "<td style='text-align: center'>"+
                        "<a class=\"layui-btn layui-btn-normal layui-btn-xs\" lay-event=\"edit\" onclick='review("+data[i].pjId+")'><i class=\"layui-icon layui-icon-edit\"></i>审核项目</a>"+
                        "</td>"+
                        "</tr>"
                }
                $("#system-order").html(html);
                //调用laypage来实现下面的分页功能
                layui.use(['laypage', 'layer'], function (){
                    var laypage = layui.laypage
                        ,layer = layui.layer;

                    //分页功能
                    laypage.render({
                        elem: 'demo7'
                        /*总条数*/
                        ,count:data.length
                        /*每页显示条数*/
                        ,limit:pageLimit
                        /*起始页*/
                        ,curr:pageCurr
                        /*连续也出现的页码数*/
                        ,groups:5
                        /*自定义主题颜色*/
                        ,theme:'#1E9FFF'
                        /*自定义排版*/
                        ,layout: ['count', 'prev', 'page', 'next', 'skip']
                        ,jump: function(obj,first){
                            //首次不执行
                            if(!first){
                                //do something
                                pageCurr = this.curr;
                                page(this.curr)

                            }
                        }
                    });
                });
            }
        })
    })
    /*审核项目iframe框*/
    function review(pjId){
        layer.open({
            type:2,
            title:"审核项目"+"<span style='color: #9F9F9F'>（页面内容不可编辑）</span>",
            content:"${pageContext.request.contextPath}/project/reviewiframe?pjId="+pjId+'&curr='+pageCurr+'&limit='+pageLimit,
            maxmin:!0,
            area:["450px","620px"],
            btn:["提交","取消"],
            yes:function(e,t){
                var r=window["layui-layer-iframe"+e],
                    l="LAY-app-workorder-submit",
                    o=t.find("iframe").contents().find("#"+l);
                    window.location.reload();
                r.layui.form.on("submit("+l+")",
                    function(t){
                        t.field;
                            layer.close(e)
                    }),
                    o.trigger("click")},
            success:function(e,t){}
        })
    }


</script>
</body>
</html>
