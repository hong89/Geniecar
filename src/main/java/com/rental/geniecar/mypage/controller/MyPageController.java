package com.rental.geniecar.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MyPageController {

	@GetMapping("/main.do")
	public String index(){
		
        return "mypage/main";
    }
	
	@GetMapping("/reservation.do")
	public String reservation(){
		
        return "mypage/reservation";
    }
	
	@GetMapping("/reservationMonth.do")
	public String reservationMonth(){
		
        return "mypage/reservationMonth";
    }

	@GetMapping("/rentCarConsulting.do")
	public String rentCarConsulting(){
		
        return "mypage/rentCarConsulting";
    }
		
	@GetMapping("/member/modify.do")
	public String memberModify(){
		
        return "mypage/member/modify";
    }
	
	@GetMapping("/member/password.do")
	public String memberPassword(){
		
        return "mypage/member/password";
    }
	
	@GetMapping("/member/leave.do")
	public String memberLeave(){
		
        return "mypage/member/leave";
    }

}
