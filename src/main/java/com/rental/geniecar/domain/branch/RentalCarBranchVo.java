package com.rental.geniecar.domain.branch;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class RentalCarBranchVo {

    //private int no;                   // 렌터카 지점 NO (시퀀스)
    private String branchCode;        // 렌터카 지점명
    private String branchName;        // 렌터카 지점명
    private String regionCode;        // 지역 코드 (공통코드 FK)
    private String roadAddress;       // 도로명 주소
    private String streetAddress;     // 지번 주소
    private String openingTime;       // 영업 시간
    private String tel;               // 전화번호
    private String wayInformation;    // 길안내
    private String shortRentalYn;     // 단기 렌트카 운영 여부 (Y 운영, N 미운영)
    private String fullTimeOpenYn;    // 24시간 운영 여부 (Y 운영, N 미운영)
    private String regId;             // 등록자 (회원아이디 FK)
    private Date regDate;             // 등록일시
    private String modId;             // 수정자 (회원아이디 FK)
    private Date modDate;             // 수정일시
}
