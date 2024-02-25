package com.rental.geniecar.domain.reservation;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class RentalCarReservationStep2Vo {
    private String rentalPlace;                  // 대여_장소 (공통코드 FK)
    private String rentalPlaceName;              // 대여_장소명
    private String returnPlace;                  // 반납_장소 (공통코드 FK)
    private String returnPlaceName;              // 반납_장소명
    private String rentalDate;                     // (대여)시작_날짜_시간
    private String rentalPrintDate;                // (대여)시작_날짜_시간 출력용
    private String returnDate;                     // 반납_날짜_시간
    private String returnPrintDate;                 // 반납_날짜_시간 출력용
    private String carIdentificationNumber;      // 차대번호
    private String rentalCarBranchNo;            // 렌터카_지점_NO
    private String rentalCarBranchName;          // 렌터카_지점명
    private String reservationMemberId;          // 예약자_ID (회원아이디 FK)

    private int regularPrice;                    // 정가
    private int saleRate;                        // 할인율
    private int finalReservationPrice;           // 최종_예약_금액 (정가/할인율=최종금액)
    
    private int availablePoint; //가용 포인트
    
    private String rentalPeriod; //총 대여기간
    private int carNo; //자동차 no
    private String carName; //차명
    private int saleCost; //할인가
    private int totalCost; //총금액
    private String reservationNo; //예약번호
    private String buyerTel; //전화번호
    private String reservationMemberName;        // 예약자_이름
    private String reservationMemberHp;          // 예약자_전화번호
}
