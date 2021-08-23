package com.hcpurchase.controller;

import com.hcpurchase.entity.HcUser;
import com.hcpurchase.service.HcUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping("/login")
public class LoginController {

    @RequestMapping("/loginbefor")
    public String login(){
        return "login";
    }

    @RequestMapping("/set")
    public String set(){
        return "set/user/info";
    }

    @RequestMapping("/password")
    public String password(){
        return "set/user/password";
    }

    @Autowired
    private HcUserService hcUserService;

    @RequestMapping("/loginafter")
    public String loginafter(HcUser hcUser, HttpServletRequest request){
        List<HcUser> list =  hcUserService.loginHcUserService(hcUser);
        System.out.println(hcUser);
        if(list.size() == 1){
            HttpSession session=request.getSession();
            session.setAttribute("hcUser",list);
            return "index";
        }

        return "login";
    }

}
