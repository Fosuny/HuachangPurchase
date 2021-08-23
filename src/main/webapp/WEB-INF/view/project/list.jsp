<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>华昌采购-项目信息表</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.5.7/style/admin.css" media="all">
</head>
<body>
  <div class="layui-fluid">
    <div class="layui-card">
      <div class="layui-form layui-card-header layuiadmin-card-header-auto">
        <div class="layui-form-item">
          
          <div style="padding-bottom: 10px;float :left;">
            <a class="layui-btn layuiadmin-btn-useradmin" lay-href="${pageContext.request.contextPath}/hcIndex/approval">新建项目</a>
          </div>
          <div style="padding-bottom: 10px;float :left;display:block;margin-left: 5px">
            <button class="layui-btn layuiadmin-btn-useradmin" data-type="batchdel">删除</button>
          </div>
          <div style="padding-bottom: 10px;float :left;margin-left:420px;float: left">
          	<button class="layui-btn" style="background-color:rgb(242,242,242);color:black;font-weight:500;font-family:'微软雅黑';border-top: solid 3px rgb(0,150,136)">华昌采购管理系统 - 采购项目信息表</button>
          </div>
          <div class="layui-inline" style="float :right">
            <button class="layui-btn layuiadmin-btn-useradmin" lay-submit lay-filter="LAY-user-front-search">
              <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
            </button>
          </div>
          <div class="layui-input-inline" style="float: right;margin-top: 3px">
            <select name="pjLevel">
              <option value="1">紧急</option>
              <option value="2" selected="">普通</option>
              <option value="3">可延缓</option>
              <option value="4">较紧急</option>
            </select>
          </div>
        </div>
        <div class="layui-card-body">
          <div class="layui-form-item">
            <div class="layui-inline" style="margin-left:-45px;float: left">
              <label class="layui-form-label">项目编号</label>
              <div class="layui-input-block">
                <input type="text" name="pjNumber" placeholder="请输入项目编号" autocomplete="off" class="layui-input">
              </div>
            </div>
            <div class="layui-inline" style="margin-left:-38px;float: left">
              <label class="layui-form-label">项目名称</label>
              <div class="layui-input-block">
                <input type="text" name="pjName" placeholder="请输入项目名称" autocomplete="off" class="layui-input">
              </div>
            </div>
            <div class="layui-inline" style="margin-left:-38px;float: left">
              <label class="layui-form-label">创建日期</label>
              <div class="layui-input-block">
                <input type="text" id="date" name="pjCreateDate" placeholder="年 / 月 / 日" autocomplete="off" class="layui-input">
              </div>
            </div>
            <div class="layui-inline" style="margin-left:-38px;float: left">
              <label class="layui-form-label">产品名称</label>
              <div class="layui-input-block">
                <input type="text" name="pjPurchaseName" placeholder="请输入产品名称" autocomplete="off" class="layui-input">
              </div>
            </div>
            <div class="layui-inline" style="margin-left:-38px;float: left">
              <label class="layui-form-label">项目状态</label>
              <div class="layui-input-inline">
                <select name="pjStatus">
                  <option value="" selected="">请选择项目状态</option>
                  <option value="1">待审核</option>
                  <option value="2">待初审</option>
                  <option value="3">初审打回</option>
                  <option value="4">初审成功</option>
                  <option value="5">待终审</option>
                  <option value="6">终审打回</option>
                  <option value="7">终审成功</option>
                  <option value="8">作废</option>
                  <option value="9">已结束</option>
                  <option value="10">已失效</option>
                  <option value="11">待评价</option>
                  <option value="12">评价完成</option>
                </select>
              </div>
            </div>
            <div class="layui-inline" style="margin-left:-58px;float: left">
              <label class="layui-form-label">类型</label>
              <div class="layui-input-inline">
                <select name="pjType">
                  <option value="" selected="">请选择项目类型</option>
                  <option value="1">食品</option>
                  <option value="2">数码电子</option>
                  <option value="3">能源储蓄</option>
                </select>
              </div>
            </div>
          </div>
        </div>
        <table id="LAY-user-manage" lay-filter="LAY-user-manage"></table>
  		<div id="demo7" style="text-align: center"></div>
        <script type="text/html" id="table-useradmin-webuser">
          <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="edit"><i class="layui-icon layui-icon-edit"></i>编辑</a>
          <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del" id="formId" onclick="sub"><i class="layui-icon layui-icon-delete"></i>删除</a>
        </script>
      </div>
    </div>
  </div>
  <script src="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/layui.js"></script>
  <script>
    layui.define(
            ["table","form"],
            function(e){
              var t=layui.$,i=layui.table;
              layui.form;
              i.render({
                elem:"#LAY-user-manage",
                type:"post",
                data:"json",
                url:"/HuachangPurchase/project/pse",
                cols:[
                  [
                    {type:"checkbox",name:"id",fixed:"left"},
                    {field:"pjNumber",title:"项目编号",align:"center"},
                    {field:"pjName",title:"项目名称",align:"center"},
                    {field:"pjType",title:"项目类型",align:"center"},
                    {field:"pjPurchaseName",title:"产品名称",align:"center"},
                    {field:"pjPrice",title:"单价",align:"center"},
                    {field:"pjCount",title:"数目",align:"center"},
                    {field:"pjTotalPrice",title:"总价",align:"center"},
                    {field:"pjLevel",title:"是否紧急",align:"center"},
                    {field:"pjStatus",title:"项目状态",align:"center"},
                    {field:"pjCreateDate",title:"创建时间",align:"center"},
                    {field:"pjUpdateDate",title:"最后修改日期",align:"center"},
                    {title:"操作",width:150,align:"center",fixed:"right",toolbar:"#table-useradmin-webuser"}
                  ]
                ],
                page:true,
                limit:20,
                height:"full-195",
                text:"对不起，加载出现异常！"}),
                      i.on("tool(LAY-user-manage)",
                              function(e){
                                e.data;
                                if('del'===e.event)
                                    layer.confirm("是否确认删除该项目？",
                                            function(t){
                                              e.del(),
                                                  layer.close(t),
                                                  window.location.href="${pageContext.request.contextPath}/project/dropById?pjId="+(e.data).pjId
                                            }
                                    );else if("edit"===e.event){t(e.tr);
                                  layer.open({
                                            type:2,
                                            title:"编辑项目",
                                            content:"${pageContext.request.contextPath}/project/userform?pjId="+(e.data).pjId,
                                            maxmin:!0,
                                            area:["480px","500px"],
                                            btn:["确定","取消"],
                                            yes:function(e,t){
                                              var l=window["layui-layer-iframe"+e],
                                                      r="LAY-user-front-submit",
                                                      n=t.find("iframe").contents().find("#"+r);
                                                      /*获取监听嵌入提交的按钮的ID*/
                                                      console.log("#"+r);
                                                      /*刷新当前页*/
                                                      window.location.reload();
                                              l.layui.form.on("submit("+r+")",
                                                      function(t){
                                                        t.field;
                                                        i.reload("LAY-user-front-submit"),
                                                                layer.close(e)}),
                                              n.trigger("click")},
                                            success:function(e,t){}
                                          }
                                  )
                                }
                              }
                      ),e("useradmin",{})
            }
    );
    layui.config({
	    base: '${pageContext.request.contextPath}/static/layui-v2.5.7/' //静态资源所在路径
	  }).extend({
	    index: 'lib/index' //主入口模块
	  }).use(['index', 'useradmin', 'table'], function(){
	    var $ = layui.$
	    ,form = layui.form
	    ,table = layui.table;

	    //监听搜索
	    form.on('submit(LAY-user-front-search)', function(data){
	      var field = data.field;

	      //执行重载
	      table.reload('LAY-user-manage', {
	        where: field
	      });
	    });

	    //事件
	    var active = {
	      batchdel: function(){
	        var checkStatus = table.checkStatus('LAY-user-manage')
	        ,checkData = checkStatus.data; //得到选中的数据


	        console.log(checkData);
	        if(checkData.length === 0){
	          return layer.msg('请至少选择一条用户数据');
	        }

	        layer.prompt({
	          formType: 1
	          ,title: '安全验证'
	        }, function(value, index){
	          layer.close(index);

				layer.confirm('是否确认删除用户数据？', function(index) {

	            //执行 Ajax 后重载
	            /*
	            admin.req({
	              url: 'xxx'
	              //,……
	            });
	            */
	            table.reload('LAY-user-manage');
	            layer.msg('已删除');
	          });
	        });
	      }
	    };

	    $('.layui-btn.layuiadmin-btn-useradmin').on('click', function(){
	      var type = $(this).data('type');
	      active[type] ? active[type].call(this) : '';
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
      });
  </script>
</body>
</html>
