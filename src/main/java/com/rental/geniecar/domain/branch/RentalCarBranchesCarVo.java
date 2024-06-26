package com.rental.geniecar.domain.branch;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class RentalCarBranchesCarVo {
    private String carIdentificationNumber;   // 차대번호 (자동차 FK) - 복합키 처리
    private int rentalCarBranchNo;            // 렌터카 지점 NO (렌터카 지점 FK) - 복합키 처리
    private String importCarYn;               // 본사 -> 대리점 인수 전('N'), 인수 완료 ('Y')
    private int defaultCost;                  // 기본 대여료 (10분 단위)
    private int defaultSaleRate;              // 기본 할인율
    private int weekSaleRate;                 // 일주일 할인율
    private int monthSaleRate;                // 월 할인율
    private String rentalAbleStatus;          // 렌트 가능 상태 (Y 가능, N 불가능)
    private String regId;                     // 등록자 (회원아이디 FK)
    private Date regDate;                     // 등록일시
    private String modId;                     // 수정자 (회원아이디 FK)
    private Date modDate;                     // 수정일시
}
