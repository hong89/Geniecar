package com.rental.geniecar.admin.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/admin/main")
public class AdminMainController {
	
	@GetMapping("/index.do")
	public String index() {
		return "admin/main/index";
	}

}
