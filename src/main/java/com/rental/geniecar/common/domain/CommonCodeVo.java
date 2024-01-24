package com.rental.geniecar.common.domain;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class CommonCodeVo {
    private String fullCode;        // 그룹코드 + 코드 (추가)
    private String code;            // 코드
    private String codeName;        // 코드 이름
    private String groupCode;       // 그룹 코드 (코드의 상위 코드)
    private String groupCodeName;   // 그룹 코드 이름
    private String description;     // 코드 설명
    private String codeSort;        // 화면에 보이는 순서
    private String useYn;           // 사용유무
    private String regId;           // 등록자
    private Date regDate;           // 등록일시
    private String modId;           // 수정자
    private Date modDate;           // 수정일시
}
