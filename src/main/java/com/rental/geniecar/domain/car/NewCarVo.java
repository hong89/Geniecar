package com.rental.geniecar.domain.car;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NewCarVo {
    private int no;                           // 시퀀스 넘버
    private String carName;                   // 화면에 보이는 차량 이름
    private String carTypeCode;               // 차종코드 (공통코드 FK) 소형 준중형 중형 준대형 대형 ...
    private String typeName;                  // 차종명
    private String carFuelCode;               // 연료코드 (공통코드 FK) 디젤, 휘발유, 전기 ..
    private String fuelName;                  // 연료코드 명
    private String company;                   // 제조사 (공통코드 FK) 현대, 기아 ...
    private String companyName;               // 제조사명
    private Integer defaultCost;              // 가격
    private int seater;                       // 인승
    private int fileNo;                       // 차 파일 번호
}
