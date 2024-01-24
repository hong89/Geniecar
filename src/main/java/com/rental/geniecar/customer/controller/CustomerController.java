package com.rental.geniecar.customer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@GetMapping("/faq.do")
	public String faq() {
		return "customer/faq";
	}
	
	@GetMapping("/question.do")
	public String question() {
		return "customer/question";
	}
	
	@GetMapping("/questionDetail.do")
	public String questionDetail() {
		return "customer/questionDetail";
	}
}
