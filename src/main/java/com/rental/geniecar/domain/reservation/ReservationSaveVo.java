package com.rental.geniecar.domain.reservation;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class ReservationSaveVo {

    //예약정보
    private String reservationNo; //예약번호
    private int carNo; //차량 no
    private String rentalPlace;
    private String returnPlace;
    private String rentalDate;
    private String returnDate;
    private String carIdentificationNumber;
    private String rentalCarBranchNo;
    private String reservationMemberId;
    private String regularPrice;
    private Integer saleRate;
    private Integer totalCost;
    private Integer finalReservationPrice;
    private String cancelYn;
    private String regId;
    private Integer addPrice;

    //결제정보
    private String applyNum;
    private String buyerName;
    private String buyerTel;
    private String cardName;
    private String cardNumber;
    private Integer cardQuota;
    private String currency;
    private String customData;
    private String impUid;
    private String merchantUid;
    private String name;
    private Integer paidAmount;
    private Integer paidAt;
    private String payMethod;
    private String pgProvider;
    private String pgTid;
    private String pgType;
    private String status;
    private String success;
}
