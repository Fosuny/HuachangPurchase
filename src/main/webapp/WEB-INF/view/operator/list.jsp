<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>华昌采购-供应商商品入库信息表</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.5.7/style/admin.css" media="all">
  <style>
    select{
      width:209px;
      height: 38px;
      color: #9F9F9F;
      border: 0px;
      padding-left: 10px;
    }
    option{
      color: black;
    }
  </style>
</head>
<body>
<form action="${pageContext.request.contextPath}/operator/operatorProducts" method="post" class="layadmin-form">
  <div class="layui-fluid">
    <div class="layui-card">
      <div class="layui-form layui-card-header layuiadmin-card-header-auto">
        <div class="layui-form-item">
          
          <div style="padding-bottom: 10px;float :left;">
            <a class="layui-btn layuiadmin-btn-useradmin" onclick="createOperator()">添加产品</a>
          </div>
          <div style="padding-bottom: 10px;float :left;margin-left:480px;float: left">
          	<button class="layui-btn" style="background-color:rgb(242,242,242);color:black;font-weight:500;font-family:'微软雅黑';border-top: solid 3px rgb(0,150,136)" disabled="disabled">华昌采购管理系统 - 供应商商品入库信息表</button>
          </div>
          <div class="layui-inline" style="float :right">
            <button class="layui-btn layuiadmin-btn-useradmin" type="submit" >提交</button>
          </div>
          <div class="layui-inline" style="float: right;margin-top: 3px">
            <div class="layui-input-inline"><%--此处下拉框内容使用C标签从数据库获取现有供应商的名称--%>
              <select name="modules" lay-verify="required" lay-search="">
                <option value="">搜索或选择现有供应商</option>
                <option value="1">layer</option>
                <option value="2">form</option>
                <option value="3">layim</option>
                <option value="4">element</option>
                <option value="5">laytpl</option>
                <option value="6">upload</option>
                <option value="7">laydate</option>
              </select>
            </div>
          </div>
        </div>
        <div class="layui-card-body">
          <div class="layui-form-item">
            <div class="layui-inline" style="float: left">
              <label class="layui-form-label">供应商名称</label>
              <div class="layui-input-block">
                <input type="text" name="operatorName" placeholder="请输入供应商名称" autocomplete="off" class="layui-input">
              </div>
            </div>
            <div class="layui-inline" style="float: left;width: 320px">
              <label class="layui-form-label" style="width: 90px">供应商联系人</label>
              <div class="layui-input-block" style="padding-left: 10px">
                <input type="text" name="operatorPrincipal" placeholder="请输入供应商联系人" autocomplete="off" class="layui-input">
              </div>
            </div>
            <div class="layui-inline" style="float: left">
              <label class="layui-form-label">供应商电话</label>
              <div class="layui-input-block">
                <input type="text" name="operatorPhone" placeholder="请输入供应商电话" autocomplete="off" class="layui-input">
              </div>
            </div>
            <div class="layui-inline" style="float: left">
              <label class="layui-form-label">供应商地址</label>
              <div class="layui-input-block">
                <input type="text" name="operatorAdress" placeholder="请输入供应商地址" autocomplete="off" class="layui-input">
              </div>
            </div>
            <div class="layui-inline" style="float: left">
              <label class="layui-form-label">供应商状态</label>
              <div class="layui-input-inline">
                <select name="operatorStatus">
                  <option value="">请选择供应商状态</option>
                  <option value="1">正常</option>
                  <option value="3">失效</option>
                </select>
              </div>
            </div>
          </div>
        </div>
        <table class="layui-table" id="operator-table">
          <colgroup>
            <col width="60">
            <col width="250">
            <col width="250">
            <col width="250">
            <col width="250">
            <col width="250">
            <col width="210">
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
            <tbody id="operator-tbody"></tbody>
        </table>
      </div>
      </div>
    </div>
  </div>
</form>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"></script>
<script src="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/layui.js"></script>
<div class="layui-form-item">
  <script>
    //供应商产品添加
    var count = 0;
    function createOperator() {
        var tbl = document.getElementById("operator-table")
        var rows = tbl.rows.length;
        var tr = tbl.insertRow(rows);
        var num = tr.insertCell(0);
        num.innerHTML = '<td style="text-align: center"><span style="margin-left: 10px">'+(count+1)+'</span></td>';

        var productName = tr.insertCell(1);
        productName.innerHTML = '<input type="text" name="list['+count+'].productName" placeholder="请输入产品名称" autocomplete="off" class="layui-input">';

        var productType = tr.insertCell(2);
        productType.innerHTML =
                '<select name="list['+count+'].productType" style="display: block" id="selectone">\n' +
                '      <option value="" style="color: #9F9F9F">选择产品类型</option>\n' +
                '      <option value="1">蔬菜</option>\n' +
                '      <option value="2">海鲜</option>\n' +
                '      <option value="3">水果</option>\n' +
                '      <option value="3">数码电子</option>\n' +
                '      <option value="3">虚拟产品</option>\n' +
                '      <option value="3">学习用品</option>\n' +
                '      <option value="3">能源储蓄</option>\n' +
                '      <option value="3">计算机</option>\n' +
                '</select>\n';

        var productPrice = tr.insertCell(3);
        productPrice.innerHTML = '<input type="text" name="list['+count+'].productPrice" placeholder="请输入产品价格" autocomplete="off" class="layui-input">';

        var productDate = tr.insertCell(4);
        productDate.innerHTML = '<input type="date" name="list['+count+'].productDate" placeholder="年 / 月 / 日" autocomplete="off" class="layui-input" style="color: #9F9F9F">';

        var productShelfDate = tr.insertCell(5);
        productShelfDate.innerHTML = '<input type="number" name="list['+count+'].productShelfDate" placeholder="请输入保质期" autocomplete="off" class="layui-input">';

        var productTimeUnit = tr.insertCell(6);
        productTimeUnit.innerHTML =
                '<select name="list['+count+'].productTimeUnit" style="display: block" id="selectone">\n' +
                '      <option value="" style="color: #9F9F9F">保质期时间单位</option>\n' +
                '      <option value="1">年</option>\n' +
                '      <option value="2">月</option>\n' +
                '      <option value="3">日</option>\n' +
                '      <option value="3">小时</option>\n' +
                '</select>\n';

        var del = tr.insertCell(7);
        del.innerHTML = '<a class="layui-btn layui-btn-normal" id="formId" onclick="del(this)">删除本条</a>';
        count++;
    }
    //动态删除操作
    function del(btn) {
        var tr = btn.parentElement.parentElement;
        var tbl = tr.parentElement;
        if (tr.rowIndex >= 1) {
            tbl.deleteRow(tr.rowIndex);
        } else {

        }
    };
    layui.config({
      base: '${pageContext.request.contextPath}/static/layui-v2.5.7/' //静态资源所在路径
    }).extend({
      index: 'lib/index' //主入口模块
    }).use(['index','table','form', 'layedit', 'laydate'], function(){
      var form = layui.form;
              var $ = layui.$,
              form = layui.form,
              table = layui.table,
              layer = layui.layer,
              layedit = layui.layedit,
              laydate = layui.laydate;
      form.render();
      //日期
      laydate.render({
        elem: '#date'
      });
      laydate.render({
        elem: '#date1'
      });

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
  </script>
</div>
</body>
</html>
