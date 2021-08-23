package com.hcpurchase.controller;

import com.hcpurchase.entity.HcOperator;
import com.hcpurchase.entity.HcProduct;
import com.hcpurchase.service.OperatorService;
import com.hcpurchase.util.ProductUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/operator")
public class OperatorController {

    @Autowired
    private OperatorService operatorService;

    /*跳转到供应商新增页面*/
    @RequestMapping("/operatorCreate")
    public String operator(){
        return "operator/list";
    }

    /*添加数据提交*/
    @RequestMapping("/operatorProducts")
    public String operatorProducts(HcOperator hcOperator,ProductUtil products){

        /*供应商产品数据*/
        products.setHcProductsList(hcOperator.getList());
        System.out.println(hcOperator);
        System.out.println(products);
        operatorService.operator(hcOperator);
        operatorService.products(products);

        return "redirect:/operator/operatorCreate";
    }

    /*供应商管理*/
    @RequestMapping("operatorQuery")
    public String operquery(){
        return "operator/workorder/listadmin";
    }

    /*供应商弹出层*/
    @RequestMapping("/operatoriframe")
    public String operatoriframe(){
        return "operator/workorder/listiframe";
    }

    /*职工管理*/
    @RequestMapping("userQuery")
    public String userQuery(){
        return "operator/user/user";
    }

    /*职工管理iframe弹出层*/
    @RequestMapping("useriframe")
    public String useriframe(){
        return "operator/user/userform";
    }
}
