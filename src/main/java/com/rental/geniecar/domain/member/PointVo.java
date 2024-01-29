package com.rental.geniecar.domain.member;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class PointVo {
    private String no;             // 시퀀스
    private String point;          // 포인트
    private String increase;       // 증감 ('+' 이면 적립 or '-' 이면 사용)
    private String history;        // 내역
    private Date regDate;          // 적립일시/사용일시
    private int currentPoint;      // 현재 잔여 포인트
    private int totalUsePoint;     // 누적 사용 포인트
    private String memberId;       // 회원아이디 (회원아이디 FK)

}
