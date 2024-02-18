package com.rental.geniecar.domain.reservation;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class ReservationRentalCarVo {
    private int carNo;
    private String carName;
    private String carTypeCode;
    private String carTypeName;
    private String carFuelCode;
    private String carFuelName;
    private int defaultCost;
    private int saleCost;
    private int totalCost;
    private int perSale;
    private String company;
    private String companyName;
    private int seater;
    private String rentalAvailable;
}
