package com.rental.geniecar.domain.car;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter @Setter
public class RequestNewCarVo {
    private String company;                   // 제조사 (공통코드 FK) 현대, 기아 ...
    private String carTypeCode;               // 차종코드 (공통코드 FK) 소형 준중형 중형 준대형 대형 ...
    private String carName;                   // 화면에 보이는 차량 이름

    private List<RentalCostVo> rentalCosts;

}
