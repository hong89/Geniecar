package com.rental.geniecar.domain.reservation;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class ReservationDetailVo {
    private String reservationNo;                // 예약번호
    private String rentalPlaceName;              // 대여_장소명
    private String returnPlaceName;              // 반납_장소명
    private Date rentalDate;                     // (대여)시작_날짜_시간
    private Date returnDate;                     // 반납_날짜_시간
    private String carIdentificationNumber;      // 차대번호
    private String rentalCarBranchName;          // 렌터카_지점명
    private String reservationMemberName;        // 예약자_이름
    private String reservationMemberHp;          // 예약자_전화번호
    private String regId;                        // 등록자 (회원아이디 FK)
    private Date regDate;                        // 등록_일시

    private String carName;
    private String typeName;
    private String fuelName;

    private int finalReservationPrice;          // 결제금액

    private String status;                      // 결제상태
    private String cardName;                    // 카드명
    private String cardNumber;                  // 카드번호
    private String pgProvider;                  // PG사
    private Integer cardQuota;                  // 할부개월
    private String paidAt;                      // 결제승인시각
}
