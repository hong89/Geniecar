package com.rental.geniecar.common.domain;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class RentalCarVo {
    private String carIdentificationNumber;   // 차대번호
    private String carTypeCode;               // 차종코드 (공통코드 FK) 소형 준중형 중형 준대형 대형 ...
    private String carNameCode;               // 차량명코드 (공통코드 FK) 소나타, 스파크, k9 ..
    private String carFuelCode;               // 연료코드 (공통코드 FK) 디젤, 휘발유, 전기 ..
    private Date deliveryDate;                // 출고일시
    private String company;                   // 제조사 (공통코드 FK) 현대, 기아 ...
}
