package com.rental.geniecar.login.service;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.login.dao.LoginDao;

import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class LoginService {

	private final LoginDao loginDao;
	
	public MemberVo login (Map<String, String> map) {
		
		return loginDao.login(map);
	}
	public String findId (Map map) {
		if(loginDao.findId(map) != null) {
			return "회원님의 아이디는 " +loginDao.findId(map) +" 입니다.";
		} else {
			return "일치하는 정보가 없습니다.";
		}
	}
	public String findPw(Map map) {
		if(loginDao.findId(map) != null) {
			return "회원님의 비밀번호는 " +loginDao.findPw(map) +" 입니다.";
		} else {
			return "일치하는 정보가 없습니다.";
		}
	}
}
