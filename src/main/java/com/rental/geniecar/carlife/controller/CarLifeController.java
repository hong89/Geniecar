package com.rental.geniecar.carlife.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/carLife")
public class CarLifeController {
	
	@GetMapping("/jejuAuto.do")
	public String jejuAuto() {
		return "carLife/jejuAuto";
	}
	
	@GetMapping("/eventMain.do")
	public String eventMain() {
		return "carLife/eventMain";
	}
	
	@GetMapping("/winnerEventMain.do")
	public String winnerEventMain() {
		return "carLife/winnerEventMain";
	}
	
	@GetMapping("/eventDetail.do")
	public String eventDetail() {
		return "carLife/eventDetail";
	}
	
	@GetMapping("/commuteRent.do")
	public String commuteRent() {
		return "carLife/commuteRent";
	}

}
