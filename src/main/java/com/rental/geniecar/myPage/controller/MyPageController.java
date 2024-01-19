package com.rental.geniecar.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myPage")
public class MyPageController {

	@GetMapping("/main.do")
	public String index(){
		
        return "myPage/main";
    }
	
	@GetMapping("/reservation.do")
	public String reservation(){
		
        return "myPage/reservation";
    }
	
	@GetMapping("/reservationMonth.do")
	public String reservationMonth(){
		
        return "myPage/reservationMonth";
    }

	@GetMapping("/rentCarConsulting.do")
	public String rentCarConsulting(){
		
        return "myPage/rentCarConsulting";
    }
		
	@GetMapping("/member/modify.do")
	public String memberModify(){
		
        return "myPage/member/modify";
    }
	
	@GetMapping("/member/password.do")
	public String memberPassword(){
		
        return "myPage/member/password";
    }
	
	@GetMapping("/member/leave.do")
	public String memberLeave(){
		
        return "myPage/member/leave";
    }

}
