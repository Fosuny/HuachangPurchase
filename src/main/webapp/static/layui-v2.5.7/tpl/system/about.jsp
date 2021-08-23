<%--
  Created by IntelliJ IDEA.
  User: Fosuny
  Date: 2021/4/23
  Time: 8:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<div class="layui-card-header">系统信息</div>
<div class="layui-card-body layui-text layadmin-about">
    <script type="text/html" template>
        <p>系统全称：华昌采购平台后台管理系统</p>
        <p>基于框架：layui-v{{ layui.v }}</p>
    </script>
    <div class="layui-btn-container">
        <a lay-href="${pageContext.request.contextPath}/hcIndex/pjse" target="_blank" class="layui-btn layui-btn-danger">项目查询</a>
        <a lay-href="${pageContext.request.contextPath}/hcIndex/usersele" target="_blank" class="layui-btn">人员查询</a>
    </div>
</div>

<div class="layui-card-header">系统介绍</div>
<div class="layui-card-body layui-text layadmin-about">

    <blockquote class="layui-elem-quote" style="border: none;">
        华昌采购管理系统是华昌采购公司旗下管理采购平台数据的后台管理系统，最终解释权归北京工商管理专修学院所有。
    </blockquote>
    <p>© 2021 <a href="http://www.layui.com/">HuachangPurchase.com</a> 版权所有</p>
</div>
