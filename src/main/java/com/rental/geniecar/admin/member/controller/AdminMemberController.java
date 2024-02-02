package com.rental.geniecar.admin.member.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.member.service.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin/member/")
@RequiredArgsConstructor
public class AdminMemberController {
	private final MemberService memberService;
	
    @GetMapping("/userList.do")
    public String userList(Model model) {
    	List<MemberVo> userList = memberService.selectAllUser();
    	model.addAttribute("userList",userList);
        return "admin/member/userList";
    }
    
    @GetMapping("/userDetail.do")
    public String userDetail(String id, Model model) {
    	model.addAttribute("user", memberService.selectOne(id));
    	return "admin/member/userDetail";
    }

    @GetMapping("/businessList.do")
    public String businessList(Model model) {
    	model.addAttribute("businessList", memberService.selectAllBusiness());
        return "admin/member/businessList";
    }

    @GetMapping("businessDetail.do")
    public String businessDetail(String id, Model model) {
    	model.addAttribute("business", memberService.selectOne(id));
    	return "admin/member/businessDetail";
    }
}
