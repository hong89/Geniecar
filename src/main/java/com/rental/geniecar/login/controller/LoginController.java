package com.rental.geniecar.login.controller;

import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rental.geniecar.common.domain.MemberVo;
import com.rental.geniecar.login.sevice.LoginService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/login")
public class LoginController {

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
}
