package com.hcpurchase.controller;

import com.alibaba.fastjson.JSON;
import com.hcpurchase.entity.HcPj;
import com.hcpurchase.service.PurchaseProjectService;
import com.hcpurchase.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
@RequestMapping("/project")
public class PurchaseProjectController {

    @Autowired
    private PurchaseProjectService purchaseProjectService;

    /*项目立项*/
    @RequestMapping("/pjCreate")
    public String pjCreate(HcPj hcPj){
        Long date = System.currentTimeMillis();
        System.out.println(date);
        purchaseProjectService.addProject(hcPj);
        return "approval/approval";
    }

    /*项目管理页面跳转*/
    @RequestMapping("/pjse")
    public String selectProject(Model model){
        Integer count = purchaseProjectService.queryCount();
        Integer curr=1;
        model.addAttribute("count",count);
        model.addAttribute("curr",curr);
        return "project/list";
    }

    /*将数据库查询到的数据转换为Json格式并传到前端页面*/
    @ResponseBody
    @RequestMapping("/pse")
    public JSON laydata(HcPj hcPj,Model model,Integer page,Integer limit,Integer curr,Map<String,Object> map){
        /*起始页*/
        curr = (page*limit)-limit;
        if(curr == null){
            curr = 0;
        }
        map = new HashMap();
        map.put("hcPj",hcPj);
        map.put("curr",curr);
        map.put("limit",limit);
        List<HcPj> list = purchaseProjectService.queryProject(map);
        Integer count = purchaseProjectService.queryCount();

        PageUtil pageUtil = new PageUtil();
        pageUtil.setData(list);
        pageUtil.setCount(count);
        Object json = JSON.toJSON(pageUtil);
        return (JSON)json;
    }

    /*项目删除（伪删除）*/
    @RequestMapping("/dropById")
    public String layFromData(Integer pjId){
        purchaseProjectService.dropById(pjId);
        return "redirect:/project/pjse";
    }

    /*项目修改嵌入式框架跳转*/
    @RequestMapping("/userform")
    public String userform(Integer pjId,HcPj hcPj, Model model){
        List<HcPj> list = purchaseProjectService.updateQuery(pjId);
        model.addAttribute("list",list);
        return "project/userform";
    }

    /*跳转到项目审核页面*/
    @RequestMapping("/pjgd")
    public String pjgd(HcPj hcPj,Model model){
        Integer count =  purchaseProjectService.reviewDataCount(hcPj);
        model.addAttribute("count",count);
        return "project/workorder/list";
    }

    /*项目修改*/
    @ResponseBody
    @RequestMapping("/updateData")
    public String updateData(HcPj hcPj){
        purchaseProjectService.updateData(hcPj);
        return null;
    }

    /*跳转到项目审核列表页*/
    @RequestMapping("/review")
    public String review(){
        return "project/workorder/list";
    }

    /*项目审核数据转JSON调出*/
    @RequestMapping("/reviewData")
    @ResponseBody
    public JSON reviewData(HcPj hcPj,Integer page,Integer limit,Integer curr,Map<String,Object> map){
        if(page == null){
            page = 0;
        }
        if(limit == null){
            limit = 14;
        }
        curr = (page*limit)-limit;
        map = new HashMap();
        map.put("hcPj",hcPj);
        map.put("curr",curr);
        map.put("limit",limit);
        List<HcPj> list = purchaseProjectService.reviewData(map);
        Object data = JSON.toJSON(list);
        return (JSON)data;
    }

    /*项目审核条件查询数据转JSON调出*/
    @RequestMapping("/reviewDataLike")
    @ResponseBody
    public String reviewDataLike(HcPj hcPj,Integer page,Integer limit,Integer curr,Map<String,Object> map){
        String pjName = hcPj.getPjName();
        String pjPurchaseName = hcPj.getPjPurchaseName();
        Integer pjCount = hcPj.getPjCount();
        String pjNumber = hcPj.getPjNumber();
        Date pjUpdate = hcPj.getPjUpdateDate();
        if(page == null){
            page = 0;
        }
        if(limit == null){
            limit = 14;
        }
        curr = (page*limit)-limit;
        map = new HashMap();
        map.put("hcPj",hcPj);
        map.put("curr",curr);
        map.put("limit",limit);
        map.put("pjName",pjName);
        map.put("pjPurchaseName",pjPurchaseName);
        map.put("pjCount",pjCount);
        map.put("pjNumber",pjNumber);
        map.put("pjUpdate",pjUpdate);
        List<HcPj> list = purchaseProjectService.reviewDataLike(map);

        String data = JSON.toJSON(list).toString();
        return data;
    }

    /*跳转到项目审核跳出框页面并调出数据*/
    @RequestMapping("/reviewiframe")
    public String reviewIframe(HcPj hcPj,Integer pjId,Model model){
        List<HcPj> list =  purchaseProjectService.datareview(hcPj);
        model.addAttribute("list",list);
        return "project/workorder/listform";
    }

    /*项目通过传回*/
    @RequestMapping("/datatrue")
    public String datatrue(Integer pjId,Integer pjStatus,String pjOnceReason,String pjLastReason,Integer page,Integer limit){
        purchaseProjectService.datatrue(pjId,pjStatus,pjOnceReason,pjLastReason);
        return "redirect:/project/pjgd";
    }

    /*项目不通过传回*/
    @RequestMapping("/datafalse")
    public String datfalse(Integer pjId,Integer pjStatus,String pjOnceReason,String pjLastReason,Integer page,Integer limit){
        purchaseProjectService.datafalse(pjId,pjStatus,pjOnceReason,pjLastReason);
        return "redirect:/project/pjgd";
    }

}
