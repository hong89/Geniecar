package com.rental.geniecar.member.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.member.dao.MemberDao;
import com.rental.geniecar.point.dao.PointDao;

import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class MemberService {
	
	private final MemberDao memberDao;
	private final PointDao pointDao;
	
	public void newMember(MemberVo vo) {
		memberDao.insertMember(vo);
		pointDao.createNewPoint(vo.getId());
	}
	public String overlapped(String id) {
		return memberDao.overlapped(id);
	}
	public void leaveMember(String id) {
		memberDao.updateWithdrawalYn(id);
	}
}
