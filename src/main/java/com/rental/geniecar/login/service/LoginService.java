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
}
