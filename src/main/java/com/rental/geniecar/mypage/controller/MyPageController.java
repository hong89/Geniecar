package com.rental.geniecar.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rental.geniecar.domain.member.LicenseVo;
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
		model.addAttribute("member", membervo);
        return "mypage/main";
    }
	//ruddud
	@GetMapping("/reservation.do")
	public String reservation(Model model, HttpSession session){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
        return "mypage/reservation";
    }
	//ruddud
	@GetMapping("/reservationDetail.do")
	public String reservationDetail(Model model){

        return "mypage/reservationDetail";
    }
	//ruddud
	@GetMapping("/reservationMonth.do")
	public String reservationMonth(Model model){
		
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
	public String point(Model model, HttpSession session){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
		List<PointVo> pointList = pointService.secletAll(membervo.getId());
		model.addAttribute("pointList", pointList);
        return "mypage/point";
    }
	//ruddud
	@GetMapping("/coupon.do")
	public String coupon(Model model, HttpSession session){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
        return "mypage/coupon";
    }
	//ruddud
	@GetMapping("/license.do")
	public String license(Model model, HttpSession session) {
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		LicenseVo license =  memberService.selectLicense(membervo.getId());
		model.addAttribute("member", membervo);
		model.addAttribute("license", license);
		return "mypage/license";
	}
	//ruddud
	@GetMapping("/member/modify.do")
	public String memberModify(HttpSession session, Model model){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
        return "mypage/member/modify";
    }
	@PostMapping("/member/domodify.do")
	public String domodify(HttpSession session, MemberVo vo) {
		session.removeAttribute("memberInfo");
		session.setAttribute("memberInfo", memberService.updateMember(vo));
		return "redirect:/mypage/member/modify.do";
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
	public String  Leave(String id,HttpSession session) {
		memberService.leaveMember(id);
		session.setAttribute("isLogOn", false);
		session.removeAttribute("memberInfo");
		return "redirect:/main/index.do";
	}
}
