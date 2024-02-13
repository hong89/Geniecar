package com.rental.geniecar.domain.car;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class RentalCostVo {

    private String carFuelCode;               // 연료코드 (공통코드 FK) 디젤, 휘발유, 전기 ..
    private Integer defaultCost;
}
