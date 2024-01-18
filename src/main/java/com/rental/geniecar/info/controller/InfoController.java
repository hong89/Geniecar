package com.rental.geniecar.info.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/info")
public class InfoController {
	
	@GetMapping("/allBranchArea.do")
	public String allBranchArea() {
		return "info/allBranchArea";
	}
	
	@GetMapping("/noticeNewsMain.do")
	public String noticeNewsMain() {
		return "info/noticeNewsMain";
	}

}
