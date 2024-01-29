package com.rental.geniecar.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.domain.member.PointVo;
import com.rental.geniecar.member.service.MemberService;
import com.rental.geniecar.point.service.PointService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MyPageController {

	private final MemberService memberService;
	private final PointService pointService;
	
	//ruddud
	@GetMapping("/main.do")
	public String index(Model model, HttpSession session){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		PointVo point = pointService.secletAll(membervo.getId());
		model.addAttribute("member", membervo);
		model.addAttribute("point", point);
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
	public String memberLeave(Model model, HttpSession session){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
        return "mypage/member/leave";
    }
	@PostMapping("/leave.do")
	public void Leave(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
		if(request.getParameter("confirm").equals("on")) {
			memberService.leaveMember(request.getParameter("id"));
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('탈퇴가 완료되었습니다.');location.replace('/main/index.do')</script>");
			session.setAttribute("isLogOn", false);
			session.removeAttribute("memberInfo");
			out.flush();
			out.close();
		}
    }
}
