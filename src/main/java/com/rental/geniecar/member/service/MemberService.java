package com.rental.geniecar.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.member.LicenseVo;
import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.domain.member.MyReservationVo;
import com.rental.geniecar.domain.member.PointVo;
import com.rental.geniecar.domain.reservation.PaymentVo;
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
		System.out.println(vo);
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
	public int updateType(String id) {
		return memberDao.updateType(id);
	}
	public int kick(String id) {
		return memberDao.updateWithdrawal(id);
	}
	public List<MyReservationVo> allMyReservation(String id) {
		return memberDao.selectAllMyReservation(id);
	}
	public MyReservationVo selectOneReservation(String no) {
		MyReservationVo reservation = new MyReservationVo();
		reservation = memberDao.selectOneReservation(no);
		reservation.setRentalPlaceAddress(memberDao.selectBranchAddress(memberDao.selectOneReservation(no).getRentalPlace()));
		reservation.setReturnPlaceAddress(memberDao.selectBranchAddress(memberDao.selectOneReservation(no).getReturnPlace()));
		return reservation;
	}
	public LicenseVo selectLicense(String id) {
		LicenseVo license = memberDao.selectLicense(id);
		

		return license;
	}
	public void insertLicense(LicenseVo vo) {
		memberDao.insertLicense(vo);
	}
	public void updateLicense(LicenseVo vo) {
		memberDao.updateLicense(vo);
	}
	public Map mypage(String id) {
		Map mypage = new HashMap<>();
		mypage.put("reservation", memberDao.countReservation(id));
		mypage.put("point", pointDao.selectPoint(id) != null? pointDao.selectPoint(id).getCurrentPoint() :0);
		mypage.put("payment", memberDao.countPayment(id));
		mypage.put("qna", memberDao.countQNA(id));
		mypage.put("license", memberDao.selectLicense(id) == null?"등록":"수정");
		System.out.println(mypage);
		return mypage;
	}

    public String hasNaverMemberId(String id) {
		return memberDao.hasNaverMemberId(id);
    }

	public void insertNaverMember(MemberVo memberVo) {
		memberDao.insertNaverMember(memberVo);
	}

	public MemberVo naverLogin(String naverId) {
		return memberDao.naverLogin(naverId);
	}
	public List<PaymentVo> selectAllMyPayment(String id){
		return memberDao.selectAllMyPayment(id);
	}
	public PaymentVo selectOnePayment(String no) {
		return memberDao.selectOnePayment(no);
	}
	public void cancelReservation(Map<String, String> map) {
		//예약 내역 수정
		memberDao.updateReservationCancel(map);
		//결제 수정
		memberDao.updatePaymentCancel(map);
		//포인트 수정
		PointVo cancelpoint =  pointDao.selectOne(map.get("reservationNo"));
		PointVo point = new PointVo(cancelpoint.getPoint(), "-", cancelpoint.getHistory(), cancelpoint.getMemberId());
		pointDao.savePoint(point);
	}
}
