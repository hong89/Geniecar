package com.rental.geniecar.domain.common;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class CouponVo {
    private String serialNo;    // 쿠폰 번호 (FORMAT: OOOO-OOO0O-OO0OO)
    private String name;        // 쿠폰명
    private String ableRegion;  // 사용 가능 지역 (공통코드 FK)
    private String type;        // 쿠폰 유형 (공통코드 FK)
    private Date expiredDate;   // 만료 날짜
    private Date usedDate;      // 사용 날짜 (날짜 존재 시 사용 완료)
    private int couponValue;    // 쿠폰가액 (금액 OR 할인율)
    private int maximumAmount;  // 최대 할인 금액 (NULL 이면 제한 없음)
    private String regId;       // 생성자 (회원아이디 FK)
    private Date regDate;       // 생성일시
}
