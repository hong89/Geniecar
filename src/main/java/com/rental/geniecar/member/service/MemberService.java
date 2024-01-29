package com.rental.geniecar.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.member.dao.MemberDao;

@Service
@Transactional
public class MemberService {
	@Autowired
	MemberDao memberDao;
	
	public void insertMember(MemberVo vo) {
		memberDao.insertMember(vo);
	}
	public String overlapped(String id) {
		return memberDao.overlapped(id);
	}
}
