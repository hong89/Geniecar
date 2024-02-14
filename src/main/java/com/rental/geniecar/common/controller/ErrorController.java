package com.rental.geniecar.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/error")
@Controller
public class ErrorController {

    @GetMapping("/auth.do")
    public String errorAuth(){
        return "error/auth";
    }

}
