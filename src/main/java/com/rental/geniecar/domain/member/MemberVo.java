package com.rental.geniecar.domain.member;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

@Getter
@Setter
public class MemberVo {
    private String id;                    // 아이디
    private String pw;                    // 비밀번호
    private String name;                  // 이름
    private String gender;                // 성별 (M: 남 F: 여)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date birthday;                // 생년월일 ('YYYY-MM-DD')
    private String hp;                    // 휴대폰 (FORMAT: XXX-XXXX-XXXX)
    private String address;               // 주소
    private String addressDetail;         // 상세주소
    private String zipCode;               // 우편번호
    private Date joinDate;                // 가입일
    private Date lastLoginDate;           // 마지막 로그인 일시
    private String withdrawalYn;          // 탈퇴 여부
    private String type;                  // 회원 타입 (U: 사용자 B: 지점 A: 사이트 관리자)
    private String branchCode;
}
