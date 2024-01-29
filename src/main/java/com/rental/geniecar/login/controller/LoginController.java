package com.rental.geniecar.login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.login.service.LoginService;

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
	public void dologin(@RequestParam Map<String, String> loginMap, HttpSession session, HttpServletResponse response) throws IOException {

		MemberVo memberVo=loginService.login(loginMap);
		
		if(memberVo!= null && memberVo.getId()!=null){
			session.setAttribute("isLogOn", true);
			session.setAttribute("memberInfo",memberVo);	
			response.sendRedirect("/main/index.do");
		}else{	
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert(\"등록되지 않은 아이디이거나 아아디 또는 비밀번호를 잘못 입력했습니다.\");history.back();</script>");
			out.flush();
			out.close();
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
