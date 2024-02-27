package com.rental.geniecar.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.member.LicenseVo;
import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.domain.member.MyReservationVo;
import com.rental.geniecar.domain.reservation.PaymentVo;

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
	public int updateType(String id);
	public int updateWithdrawal(String id);
	public List<MyReservationVo> selectAllMyReservation(String id);
	public MyReservationVo selectOneReservation(String no);
	public String selectBranchAddress(String branchCode);
	public LicenseVo selectLicense(String id);
	public void insertLicense(LicenseVo vo);
	public void updateLicense(LicenseVo vo);
	public int countQNA(String id);

    String hasNaverMemberId(String id);

	void insertNaverMember(MemberVo memberVo);

	MemberVo naverLogin(String naverId);
	public int countPayment(String id);
	public int countReservation(String id);
	public List<PaymentVo> selectAllMyPayment(String id);
	public PaymentVo selectOnePayment(String no);
	public void updateReservationCancel(Map map);
	public void updatePaymentCancel(Map map);
	
}
