package com.rental.geniecar.domain.member;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MyReservationVo {
    private String reservationNo;                // 예약번호
    private String rentalPlace;                  // 대여_장소 (공통코드 FK)
    private String rentalPlaceName;              // 대여_장소명
    private String rentalPlaceAddress; 			 // 대여_지점_주소
    private String returnPlace;                  // 반납_장소 (공통코드 FK)
    private String returnPlaceName;              // 반납_장소명
    private String returnPlaceAddress; 			 // 반납_지점_주소
    private Date rentalDate;                     // (대여)시작_날짜_시간
    private Date returnDate;                     // 반납_날짜_시간
    private String carIdentificationNumber;      // 차대번호
    private String rentalCarBranchNo;            // 렌터카_지점_NO
    private String rentalCarBranchName;          // 렌터카_지점명
    private String reservationMemberId;          // 예약자_ID (회원아이디 FK)
    private String reservationMemberName;        // 예약자_이름
    private String reservationMemberHp;          // 예약자_전화번호
    private int regularPrice;                    // 정가
    private int saleRate;                        // 할인율
    private int addPrice;						 //	추가요금(면책금)
    private int usePoint;						 // 사용 포인트
    private int finalReservationPrice;           // 최종_예약_금액 (정가/할인율=최종금액)
    private String cancelYn;					 // 예약 취소 여부
    private String regId;                        // 등록자 (회원아이디 FK)
    private Date regDate;                        // 등록_일시
    private String modId;                        // 수정자 (회원아이디 FK)
    private Date modDate;                        // 수정_일시
    private String carName;                      // 자동차_이름	
}