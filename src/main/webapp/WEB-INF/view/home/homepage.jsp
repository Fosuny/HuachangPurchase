<%--
  Created by IntelliJ IDEA.
  User: Fosuny
  Date: 2021/4/21
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>华昌采购 | 主页</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.5.7/style/admin.css" media="all">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/images/favicon.ico">
</head>
<body>

<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">
                    全部项目
                    <span class="layui-badge layui-bg-blue layuiadmin-badge">总数</span>
                </div>
                <div class="layui-card-body layuiadmin-card-list">
                    <p class="layuiadmin-big-font">16</p>
                    <p>
                        入库项目总数
                        <span class="layuiadmin-span-color">1000000<i class="layui-inline layui-icon layui-icon-flag"></i></span>
                    </p>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">
                    待初审项目
                    <span class="layui-badge layui-bg-cyan layuiadmin-badge">总数</span>
                </div>
                <div class="layui-card-body layuiadmin-card-list">
                    <p class="layuiadmin-big-font">35</p>
                    <p>
                        全部等待初审的项目
                        <span class="layuiadmin-span-color">100<i class="layui-inline layui-icon layui-icon-flag"></i></span>
                    </p>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">
                    待终审项目
                    <span class="layui-badge layui-bg-green layuiadmin-badge">总数</span>
                </div>
                <div class="layui-card-body layuiadmin-card-list">
                    <p class="layuiadmin-big-font">34</p>
                    <p>
                        全部等待终审的项目
                        <span class="layuiadmin-span-color">50<i class="layui-inline layui-icon layui-icon-flag"></i></span>
                    </p>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">
                    已完成项目
                    <span class="layui-badge layui-bg-orange layuiadmin-badge">总数</span>
                </div>
                <div class="layui-card-body layuiadmin-card-list">
                    <p class="layuiadmin-big-font">28</p>
                    <p>
                        全部完成的项目
                        <span class="layuiadmin-span-color">100000000<i class="layui-inline layui-icon layui-icon-flag"></i></span>
                    </p>
                </div>
            </div>
        </div>
        <div class="layui-col-sm12">
            <div class="layui-card">
                <div class="layui-card-header">
                    项目业绩与商品成图展示
                    <div class="layui-btn-group layuiadmin-btn-group">
                        <a href="javascript:;" class="layui-btn layui-btn-primary layui-btn-xs">今年</a>
                        <a href="javascript:;" class="layui-btn layui-btn-primary layui-btn-xs">2021年</a>
                    </div>
                </div>
                <div class="layui-card-body">
                    <div class="layui-row">
                        <div class="layui-col-sm8">
                            <div class="layui-carousel layadmin-carousel layadmin-dataview" data-anim="fade" lay-filter="LAY-index-pagetwo">
                                <div carousel-item id="LAY-index-pagetwo">
                                    <div><i class="layui-icon layui-icon-loading1 layadmin-loading"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-col-sm4">
                            <div class="layuiadmin-card-list">
                                <p class="layuiadmin-normal-font">新增项目</p>
                                <span>项目总数</span>
                                <div class="layui-progress layui-progress-big" lay-showPercent="yes">
                                    <div class="layui-progress-bar" lay-percent="200"></div>
                                </div>
                            </div>
                            <div class="layuiadmin-card-list">
                                <p class="layuiadmin-normal-font">项目审核通过数目</p>
                                <span>初审通过的项目</span>
                                <div class="layui-progress layui-progress-big" lay-showPercent="yes">
                                    <div class="layui-progress-bar" lay-percent="124"></div>
                                </div>
                            </div>
                            <div class="layuiadmin-card-list">
                                <p class="layuiadmin-normal-font">项目审核通过数量</p>
                                <span>终审通过的项目</span>
                                <div class="layui-progress layui-progress-big" lay-showPercent="yes">
                                    <div class="layui-progress-bar" lay-percent="282"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-col-sm4">
            <div class="layui-card">
                <div class="layui-card-header">系统公告</div>
                <div class="layui-card-body">
                    <ul class="layuiadmin-card-status layuiadmin-home2-usernote">
                        <li>
                            <h3>采购项目类型分类优化</h3>
                            <p>从项目的单项类型分类改进为项目三级类型分类，类型定位更精准，查询更加准确，查询结果更加清晰明了，目前该该采购系统项目仍未完成，预计完成时间为本学月项目实训结束！</p>
                            <p>项目实训结束时间大致为5月26日，请大家耐心等待系统的完善！</p>
                            <p>系统更新内容：-->从最初的单级项目分类升级为三级分类，查询采购项目时更加容易定位到所需项目</p>
                            <span>2021年5月10日 00:00</span>
                            <a href="javascript:;" layadmin-event="replyNote" data-id="7" class="layui-btn layui-btn-xs layuiadmin-reply">回复</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="layui-col-sm8">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-sm6">
                    <div class="layui-card">
                        <div class="layui-card-header">本月员工完成量排行榜</div>
                        <div class="layui-card-body">
                            <table class="layui-table layuiadmin-page-table" lay-skin="line">
                                <thead>
                                <tr>
                                    <th>职工姓名</th>
                                    <th>入职时间</th>
                                    <th>职称</th>
                                    <th>登陆次数</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><span class="first">胡歌</span></td>
                                    <td><i class="layui-icon layui-icon-log"> 11:20</i></td>
                                    <td><span>在线</span></td>
                                    <td>22 <i class="layui-icon layui-icon-praise"></i></td>
                                </tr>
                                <tr>
                                    <td><span class="second">彭于晏</span></td>
                                    <td><i class="layui-icon layui-icon-log"> 10:40</i></td>
                                    <td><span>在线</span></td>
                                    <td>21 <i class="layui-icon layui-icon-praise"></i></td>
                                </tr>
                                <tr>
                                    <td><span class="third">靳东</span></td>
                                    <td><i class="layui-icon layui-icon-log"> 01:30</i></td>
                                    <td><i>离线</i></td>
                                    <td>66 <i class="layui-icon layui-icon-praise"></i></td>
                                </tr>
                                <tr>
                                    <td>吴尊</td>
                                    <td><i class="layui-icon layui-icon-log"> 21:18</i></td>
                                    <td><i>离线</i></td>
                                    <td>45 <i class="layui-icon layui-icon-praise"></i></td>
                                </tr>
                                <tr>
                                    <td>小蚊子</td>
                                    <td><i class="layui-icon layui-icon-log"> 21:18</i></td>
                                    <td><i>在线</i></td>
                                    <td>45 <i class="layui-icon layui-icon-praise"></i></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="layui-col-sm6">
                    <div class="layui-card">
                        <div class="layui-card-header">项目进展</div>
                        <div class="layui-card-body">
                            <div class="layui-tab-content">
                                <div class="layui-tab-item layui-show">
                                    <table id="LAY-index-prograss"></table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script src="${pageContext.request.contextPath}/static/layui-v2.5.7/layui/layui.js"></script>
<script>
    layui.config({
        base: '${pageContext.request.contextPath}/static/layui-v2.5.7/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index','sample']);
</script>
</body>
</html>
