
package com.rental.geniecar.admin.member.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.member.service.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin/member/")
@RequiredArgsConstructor
public class AdminMemberController {
	private final MemberService memberService;
	
    @GetMapping("/userList.do")
    public String userList(Pagination pagination,Model model) {
    	pagination.setTotalRecordCount(memberService.countUser(pagination));
    	model.addAttribute("userList",memberService.selectAllUser(pagination));
        return "admin/member/userList";
    }
    
    @GetMapping("/userDetail.do")
    public String userDetail(String id, Model model) {
    	model.addAttribute("user", memberService.selectOne(id));
    	return "admin/member/userDetail";
    }

    @GetMapping("/businessList.do")
    public String businessList(Pagination pagination, Model model) {
    	pagination.setTotalRecordCount(memberService.countBusiness(pagination));
    	model.addAttribute("businessList", memberService.selectAllBusiness(pagination));
        return "admin/member/businessList";
    }

    @GetMapping("businessDetail.do")
    public String businessDetail(String id, Model model) {
    	model.addAttribute("business", memberService.selectOne(id));
    	return "admin/member/businessDetail";
    }
    
    @GetMapping("/waitingList.do")
    public String waitingList(Model model) {
    	List<MemberVo> waitingList = memberService.selectWaitingApproval();
    	model.addAttribute("waitingList",waitingList);
    	
        return "admin/member/waitingList";
    }
    
    @GetMapping("/approvla.do")
    public @ResponseBody int approvla(String id) {
    	return memberService.updateType(id);
    }
    
    @GetMapping("/kick.do")
    public @ResponseBody int kick(String id) {
    	return memberService.kick(id);
    }
}
