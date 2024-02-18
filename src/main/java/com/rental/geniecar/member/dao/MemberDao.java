package com.rental.geniecar.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.member.LicenseVo;
import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.domain.reservation.ReservationVo;

@Mapper
public interface MemberDao {

	public void insertMember(MemberVo vo);
	public String overlapped(String id);
	public MemberVo selectOne(String id);
	public void updateWithdrawalYn(String id);
	public void updateMember(MemberVo vo);
	public int updatePw(MemberVo vo);
	public List<MemberVo> selectAllUser(Pagination pagination);
	public int countUser(Pagination pagination);
	public List<Map> selectAllBusiness(Pagination pagination);
	public int countBusiness(Pagination pagination);
	public List<MemberVo> selectWaiting();
	public void updateType(String id);
	public int updateWithdrawal(String id);
	public List<ReservationVo> allMyReservation(String id);
	public LicenseVo selectLicense(String id);
	public void insertLicense(LicenseVo vo);
	public void updateLicense(LicenseVo vo);
	
}
