package com.rental.geniecar.login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String login(HttpSession session){
		session.getAttribute("isLogOn");
		System.out.println(session.getAttribute("isLogOn"));
        return "login/login";
    }
	//ruddud
	@PostMapping("/dologin.do")
	public void dologin(@RequestParam Map<String, String> loginMap, HttpSession session, HttpServletResponse response) throws IOException {

		MemberVo memberVo=loginService.login(loginMap);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(memberVo!= null && memberVo.getId()!=null){
			
			if(memberVo.getWithdrawalYn().equals("N")) {
				session.setAttribute("isLogOn", true);
				session.setAttribute("memberInfo",memberVo);
				session.setAttribute("mypage",loginService.mypage(memberVo.getId()));
				response.sendRedirect("/main/index.do");	
			} else if(memberVo.getWithdrawalYn().equals("K")) {
				out.print("<script>alert('규정위반으로 강퇴당한 회원입니다. 관리자에게 문의하세요');history.back();</script>");
				out.flush();
				out.close();
			} else {	
				out.print("<script>alert(\"등록되지 않은 아이디이거나 아이디 또는 비밀번호를 잘못 입력하셨습니다.\");history.back();</script>");
				out.flush();
				out.close();
			}
		}else{	
			out.print("<script>alert(\"등록되지 않은 아이디이거나 아이디 또는 비밀번호를 잘못 입력하셨습니다.\");history.back();</script>");
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
	//ruddud
	@GetMapping("/findId.do")
	public String findId() {
		return "login/findId";
	}
	//ruddud
	@PostMapping("/resultFindId.do")
	public @ResponseBody String resultFindId(@RequestParam Map member) {
		return loginService.findId(member);
	}
	//ruddud
	@GetMapping("/findPw.do")
	public String findPw() {
		return"login/findPw";
	}
	//ruddud
	@PostMapping("/resultFindPw.do")
	public @ResponseBody String resultFindPw(@RequestParam Map member) {
		return loginService.findPw(member);
	}

}
