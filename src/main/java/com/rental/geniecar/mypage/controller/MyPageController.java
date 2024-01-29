package com.rental.geniecar.mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rental.geniecar.domain.member.MemberVo;

@Controller
@RequestMapping("/mypage")
public class MyPageController {

	//ruddud
	@GetMapping("/main.do")
	public String index(Model model, HttpSession session){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
        return "mypage/main";
    }
	//ruddud
	@GetMapping("/reservation.do")
	public String reservation(){
		
        return "mypage/reservation";
    }
	//ruddud
	@GetMapping("/reservationDetail.do")
	public String reservationDetail(){
		
        return "mypage/reservationDetail";
    }
	//ruddud
	@GetMapping("/reservationMonth.do")
	public String reservationMonth(){
		
        return "mypage/reservationMonth";
    }
	//ruddud
	@GetMapping("/rentCarConsulting.do")
	public String rentCarConsulting(){
		
        return "mypage/rentCarConsulting";
    }
	//ruddud
	@GetMapping("/rentCarConsultingDetail.do")
	public String rentCarConsultingDetail(){
		
        return "mypage/rentCarConsultingDetail";
    }
	//ruddud
	@GetMapping("/point.do")
	public String point(){
		
        return "mypage/point";
    }
	//ruddud
	@GetMapping("/coupon.do")
	public String coupon(){
		
        return "mypage/coupon";
    }
	//ruddud
	@GetMapping("/license.do")
	public String license() {
		
		return "mypage/license";
	}
	//ruddud
	@GetMapping("/member/modify.do")
	public String memberModify(){
		
        return "mypage/member/modify";
    }
	//ruddud
	@GetMapping("/member/password.do")
	public String memberPassword(){
		
        return "mypage/member/password";
    }
	//ruddud
	@GetMapping("/member/leave.do")
	public String memberLeave(){
		
        return "mypage/member/leave";
    }
}
