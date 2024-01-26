package com.rental.geniecar.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rental.geniecar.common.domain.MemberVo;
import com.rental.geniecar.member.service.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
public class MemberController {
	
	private final MemberService memberService;

	//ruddud
	@GetMapping("/join.do")
	public String join(){
        return "member/join";
    }
	
	//ruddud
	@PostMapping("/overlapped.do")
	public @ResponseBody String overlapped(@RequestParam("id") String id) throws Exception{
		return memberService.overlapped(id);
	}
	
	//ruddud
	@PostMapping("/doJoin.do")
	public String doJoin(MemberVo member){
		memberService.insertMember(member);
		return "member/completelyJoin";
    }

	//ruddud
    @GetMapping("/businessJoin.do")
    public String businessJoin(){

        return "member/businessJoin";
    }

}
