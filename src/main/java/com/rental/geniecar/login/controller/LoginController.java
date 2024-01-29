package com.rental.geniecar.login.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/login")
public class LoginController {
/*
	private final LoginService loginService;

	//ruddud
	@GetMapping("/login.do")
	public String login(){

        return "login/login";
    }
	//ruddud
	@PostMapping("/dologin.do")
	public String dologin(@RequestParam Map<String, String> loginMap, HttpSession session) {

		MemberVo memberVo=loginService.login(loginMap);
		if(memberVo!= null && memberVo.getId()!=null){
			session.setAttribute("isLogOn", true);
			session.setAttribute("memberInfo",memberVo);
			return "redirect:/main/index.do";

		}else{
			return "/login/login";
		}
	}
	//ruddud
	@GetMapping("/logout.do")
	public String logout(HttpSession session){
		session.setAttribute("isLogOn", false);
		session.removeAttribute("memberInfo");
		return "redirect:/main/index.do";
    }
    */

}
