package com.hcpurchase.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hcIndex")
public class IndexController {



    //系统layui框架主页
    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    //系统主页
    @RequestMapping("/homepage")
    public String homepage1(){
        return "home/homepage";
    }

    //项目立项
    @RequestMapping("/approval")
    public String approval(){
        return "approval/approval";
    }

    //人员查询
    @RequestMapping("/usersele")
    public String usersele(){
        return "approval/userselect";
    }

}
