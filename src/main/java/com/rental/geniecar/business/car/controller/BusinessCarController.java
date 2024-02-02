package com.rental.geniecar.business.car.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/business/car/")
public class BusinessCarController {

    @GetMapping("/list.do")
    public String list(){
        return "business/car/list";
    }

    //hsh
    @GetMapping("/assignList.do")
    public String assignList(){
        return "business/car/assignList";
    }

    //hsh
    @GetMapping("/register.do")
    public String register(){
        return "business/car/register";
    }
    @GetMapping("/modify.do")
    public String modify(){
        return "business/car/modify";
    }
    @GetMapping("/remove.do")
    public String remove(){
        return "business/car/remove";
    }
}
