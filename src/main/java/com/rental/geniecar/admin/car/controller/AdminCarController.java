package com.rental.geniecar.admin.car.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/car/")
public class AdminCarController {

    @GetMapping("/list.do")
    public String list(){
        return "admin/car/list";
    }
    @GetMapping("/register.do")
    public String register(){
        return "admin/car/register";
    }
    @GetMapping("/modify.do")
    public String modify(){
        return "admin/car/modify";
    }
    @GetMapping("/remove.do")
    public String remove(){
        return "admin/car/remove";
    }
}
