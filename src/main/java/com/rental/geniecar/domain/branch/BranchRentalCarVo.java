package com.rental.geniecar.domain.branch;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class BranchRentalCarVo {
    private String carIdentificationNumber;   // 차대번호
    private String branch;                    // 렌터카 지점명
    private String branchCode;                // 렌터카 지점 코드
    private String locationBranch;            // 렌터카 지역명
    private String carType;                   // 차종 이름
    private String carName;                   // 차량 이름
    private String carFuel;                   // 연료 이름
    private String company;                   // 제조사 이름
    private Date deliveryDate;                // 출고일시
}
