package com.rental.geniecar.member.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rental.geniecar.common.service.CommonService;
import com.rental.geniecar.domain.common.CommonCodeVo;
import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.member.service.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
public class MemberController {
	
	private final MemberService memberService;
	private final CommonService commonService;

	//ruddud
	@GetMapping("/join.do")
	public String join(){
        return "member/join";
    }
	//ruddud
	@GetMapping("/businessJoin.do")
    public String businessJoin(MemberVo member, Model model){
    	List<CommonCodeVo> locations = commonService.selectCommonCodes("LOC");
        model.addAttribute("locations", locations);
        return "member/businessJoin";
    }
	//ruddud
	@PostMapping("/overlapped.do")
	public @ResponseBody String overlapped(@RequestParam("id") String id) throws Exception{
		return memberService.overlapped(id);
	}
	
	//ruddud
	@PostMapping("/completeJoin.do")
	public String completeJoin(@Valid @ModelAttribute("Join")MemberVo member, Model model, Errors errors){
		memberService.newMember(member);
		model.addAttribute("name", member.getName());
		return "member/completeJoin";
    }
	
	@ResponseBody
	@GetMapping("/branch.do")
	public ResponseEntity branch(String groupCode) {
		 List<CommonCodeVo> branchCode = commonService.selectCommonCodes(groupCode);
		 return ResponseEntity.ok(branchCode);
	}
}
