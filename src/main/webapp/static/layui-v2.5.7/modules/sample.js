/**
 * layuiAdmin.std-v1.0.0 LPPL License By http://www.layui.com/admin/
 * Created by IntelliJ IDEA.
 * User: Fosuny
 * Date: 2021/4/28
 * Time: 14:57
 * To change this template use File | Settings | File Templates.
 * */
layui.define(
    function(e){
        var a=layui.admin;
        layui.use(
            [
                "admin","carousel"
            ],
            function(){
                var e=layui.$,
                    a=(layui.admin,layui.carousel),
                    l=layui.element,t=layui.device();
                e(".layadmin-carousel").each(function(){
                    var l=e(this);
                    a.render({
                        elem:this,
                        width:"100%",
                        arrow:"none",
                        interval:l.data("interval"),
                        autoplay:l.data("autoplay")===!0,
                        trigger:t.ios||t.android?"click":"hover",
                        anim:l.data("anim")})}),
                    l.render("progress")}),
            layui.use(["carousel","echarts"],
                function(){var e=layui.$,
                    a=(layui.carousel,layui.echarts),
                    l=[],t=[{tooltip:{trigger:"axis"},
                        calculable:!0,legend:{
                            data:["访问量","下载量","平均访问量"]},
                        xAxis:[{
                                type:"category",
                                data:["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"]
                        }],
                        yAxis:[
                            {type:"value",name:"访问量",axisLabel:{formatter:"{value} 万"}},
                            {type:"value",name:"下载量",axisLabel:{formatter:"{value} 万"}}
                        ],
                        series:[
                            {name:"访问量",type:"line",data:[900,850,950,1e3,1100,1050,1e3,1150,1250,1370,1250,1100]},
                            {name:"下载量",type:"line",yAxisIndex:1,data:[850,850,800,950,1e3,950,950,1150,1100,1240,1e3,950]},
                            {name:"平均访问量",type:"line",data:[870,850,850,950,1050,1e3,980,1150,1e3,1300,1150,1e3]}
                        ]
                }],
                    i=e("#LAY-index-pagetwo").children("div"),n=function(e){l[e]=a.init(i[e],layui.echartsTheme),
                        l[e].setOption(t[e]),
                        window.onresize=l[e].resize};
                    i[0]&&n(0)}),
            layui.use("table",function(){
                    var e=(
                        layui.$,
                        layui.table
                    );
                    e.render({
                        elem:"#LAY-index-prograss",
                        url:layui.setter.base+"json/console/prograss.js",
                        cols:[[
                            {field:"prograss",title:"项目名称"},
                            {field:"prograss",title:"项目类型"},
                            {field:"time",title:"产品名称"},
                            {field:"complete",title:"完成情况"}
                        ]],
                        skin:"line"}
                    )
                }
            ),
            a.events.replyNote=function(e){
                var a=e.data("id");
                layer.prompt(
                    {title:"回复留言 ID:"+a,formType:2},
                    function(e,a){
                        layer.msg("得到："+e),layer.close(a)
                    }
                )
            },e("sample",{})
    }
);