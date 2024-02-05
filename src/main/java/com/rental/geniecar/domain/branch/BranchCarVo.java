package com.rental.geniecar.domain.branch;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BranchCarVo extends BranchRentalCarVo {
    private String rentalAbleStatus;          // 사용여부
    private int defaultCost;                  // 기본 대여료 (10분 단위)
}
