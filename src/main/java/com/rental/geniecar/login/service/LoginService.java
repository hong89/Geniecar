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
		String pw = loginDao.findPw(map);
		if(pw != null) {
			String resultpw = pw.substring(0,4);
			for (int i =0 ; i<pw.length()-4;i++) {
				resultpw += "*";
			}
			return resultpw;
		} else {
			return null;
		}
	}
	public Map mypage(String id) {
		Map mypage = new HashMap<>();
		mypage.put("coupons", loginDao.countCoupons(id));
		Integer point=0;
		if(pointDao.selectPoint(id) != null) { point = pointDao.selectPoint(id).getCurrentPoint(); }
		mypage.put("point", point);
		mypage.put("qna", loginDao.countQNA(id));
		return mypage;
	}
}
