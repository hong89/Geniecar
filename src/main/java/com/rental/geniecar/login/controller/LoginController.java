package com.rental.geniecar.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

	//ruddud
	@GetMapping("/login.do")
	public String loginForm(){
		
        return "login/login";
    }
}
