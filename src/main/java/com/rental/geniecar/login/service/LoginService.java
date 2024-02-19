package com.rental.geniecar.login.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.login.dao.LoginDao;
import com.rental.geniecar.point.dao.PointDao;
import com.rental.geniecar.point.service.PointService;

import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class LoginService {

	private final LoginDao loginDao;
	private final PointDao pointDao;
	
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
			String resultid = id.substring(0,2);
			for (int i =0 ; i<id.length()-2;i++) {
				resultid += "*";
			}
			return resultid;
		} else {
			return null;
		}
	}
	public boolean findPw(Map map) {
		if(loginDao.findPw(map) == 1) {
			return true;
		} else {
			return false;
		}
		
	}
	public void changePw(Map pw) {
		loginDao.changePw(pw);
	}
}
