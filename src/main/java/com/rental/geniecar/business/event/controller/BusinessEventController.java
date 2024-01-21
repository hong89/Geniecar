package com.rental.geniecar.business.event.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/business/event/")
public class BusinessEventController {
    @GetMapping("/list.do")
    public String list(){
        return "business/event/list";
    }
    @GetMapping("/register.do")
    public String register(){
        return "business/event/register";
    }
    @GetMapping("/modify.do")
    public String modify(){
        return "business/event/modify";
    }
    @GetMapping("/remove.do")
    public String remove(){
        return "business/event/remove";
    }

}
