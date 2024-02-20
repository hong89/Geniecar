package com.rental.geniecar.domain.reservation;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class RentalCarReservationVo {
    private String reservationNo;                // 예약번호
    private String rentalPlace;                  // 대여_장소 (공통코드 FK)
    private String rentalPlaceName;              // 대여_장소명
    private String returnPlace;                  // 반납_장소 (공통코드 FK)
    private String returnPlaceName;              // 반납_장소명
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
    private int finalReservationPrice;           // 최종_예약_금액 (정가/할인율=최종금액)
    private String regId;                        // 등록자 (회원아이디 FK)
    private String regDate;                        // 등록_일시
    private String modId;                        // 수정자 (회원아이디 FK)
    private String modDate;                        // 수정_일시
}
