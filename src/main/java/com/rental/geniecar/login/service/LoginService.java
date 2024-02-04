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
		if(loginDao.login(map) != null && loginDao.login(map).getId()!=null) {
		loginDao.updateLastLoginDate(loginDao.login(map).getId());
		return loginDao.login(map);
		} else {
			return null;
		}
	}
	public String findId (Map map) {
		String id = loginDao.findId(map);
		if(id != null) {
			String resultid = id.substring(0,4);
			for (int i =0 ; i<id.length()-4;i++) {
				resultid += "*";
			}
			return resultid;
		} else {
			return null;
		}
	}
	public String findPw(Map map) {
		if(loginDao.findPw(map) != null) {
			return "회원님의 비밀번호는 " +loginDao.findPw(map) +" 입니다.";
		} else {
			return "일치하는 정보가 없습니다.";
		}
	}
}
