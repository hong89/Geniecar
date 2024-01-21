package com.rental.geniecar.business.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/business/main")
public class BusinessMainController {

    @GetMapping("/index.do")
    public String index(){
        return "business/main/index";
    }
}
