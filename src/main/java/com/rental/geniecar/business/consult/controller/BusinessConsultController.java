package com.rental.geniecar.business.consult.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/business/consult/")
public class BusinessConsultController {
    @GetMapping("/one.do")
    public String one(){
        return "business/consult/one";
    }
    @GetMapping("/review.do")
    public String review(){
        return "business/consult/review";
    }
    @GetMapping("/consult.do")
    public String consult(){
        return "business/consult/consult";
    }
    @GetMapping("/register.do")
    public String register(){
        return "business/consult/register";
    }
}