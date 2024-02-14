package com.rental.geniecar.domain.car;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class ResponseBranchCarVo {

    private int no;
    private String carName;
    private String carTypeCode;
    private String typeName;
    private String carFuelCode;
    private String fuelName;
    private int defaultCost;
    private String company;
    private String companyName;
    private String carIdentificationNumber;
    private String rentalAbleStatus;

}
