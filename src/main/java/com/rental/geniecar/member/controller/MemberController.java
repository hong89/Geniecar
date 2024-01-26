package com.rental.geniecar.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rental.geniecar.common.domain.MemberVo;
import com.rental.geniecar.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	MemberService memberService;

	@GetMapping("/join.do")
	public String join(){
        return "member/join";
    }
	
	@PostMapping("/doJoin.do")
	public String doJoin(MemberVo member){
		memberService.insertMember(member);
		return "member/completelyJoin";
    }

	
    @GetMapping("/businessJoin.do")
    public String businessJoin(){

        return "member/businessJoin";
    }

}
