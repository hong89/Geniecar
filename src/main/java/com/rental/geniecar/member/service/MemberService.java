package com.rental.geniecar.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.member.LicenseVo;
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
	}
	public String overlapped(String id) {
		return memberDao.overlapped(id);
	}
	public void leaveMember(String id) {
		memberDao.updateWithdrawalYn(id);
		pointDao.delete(id);
	}
	public MemberVo updateMember(MemberVo vo) {
		memberDao.updateMember(vo);
		return memberDao.selectOne(vo.getId());
	}
	public int changepw(String currentPw, MemberVo vo) {
		if(currentPw.equals(selectOne(vo.getId()).getPw())) {
			return memberDao.updatePw(vo);
		} else {
			return 0;		
		}		
	}
	public List<Map> selectAllBusiness(Pagination pagination){
		return memberDao.selectAllBusiness(pagination);
	}
	public int countBusiness(Pagination pagination) {
		return memberDao.countBusiness(pagination);
	}
	public List<MemberVo> selectAllUser(Pagination pagination){
		return memberDao.selectAllUser(pagination);
	}
	public int countUser(Pagination pagination) {
		return memberDao.countUser(pagination);
	}
	public MemberVo selectOne(String id) {
		return memberDao.selectOne(id);
	}
	public List<MemberVo> selectWaitingApproval(){
		return memberDao.selectWaiting();
	}
	public void updateType(String id) {
		memberDao.updateType(id);
	}
	public int kick(String id) {
		return memberDao.updateWithdrawal(id);
	}
	public Map myReservation(String id) {
		return memberDao.myReservation(id);
	}
	public LicenseVo selectLicense(String id) {
		return memberDao.selectLicense(id);
	}
	public void insertLicense(LicenseVo vo) {
		memberDao.insertLicense(vo);
	}
	public void updateLicense(LicenseVo vo) {
		memberDao.updateLicense(vo);
	}

}
