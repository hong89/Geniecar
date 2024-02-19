package com.rental.geniecar.domain.board;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class ConsultVo {
    private int no;              // 시퀀스
    private String name;         // 이름
    private String tel;          // 연락처 (FORMAT: XXX-XXXX-XXXX)
    private String email;        // 이메일
    private String purpose;      // 사용목적
    private String wishRegion;   // 희망 대여 지역 (공통코드 FK)
    private Date regDate;        // 작성일시
    private String statusYn;     // 상담 완료 여부
}