package com.rental.geniecar.common.domain;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class MemberCouponsVo {
    private String memberId;           // 회원아이디 (회원아이디 FK) 복합키
    private String couponeSerialNo;    // 쿠폰 번호 (쿠폰 FK) 복합키
    private String issuerId;           // 발급자 (시스템이 주는 경우도 케이스도 생각하여 NULL 허용)
    private Date issuerDate;           // 발급일
}
