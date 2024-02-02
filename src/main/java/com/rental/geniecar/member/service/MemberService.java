package com.rental.geniecar.member.service;

import java.util.List;
import java.util.Map;

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
	public MemberVo updateMember(MemberVo vo) {
		memberDao.updateMember(vo);
		return memberDao.selectOne(vo.getId());
	}
	public List<MemberVo> selectAllUser(){
		List<MemberVo> memberList = memberDao.selectAllUser();
		return memberList;
	}
	public MemberVo selectOne(String id) {
		return memberDao.selectOne(id);
	}
	public List<MemberVo> selectAllBusiness() {
		List<MemberVo> memberList = memberDao.selectAllBusiness();
		return memberList;
	}
}
