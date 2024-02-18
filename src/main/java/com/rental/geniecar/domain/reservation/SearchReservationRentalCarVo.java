package com.rental.geniecar.domain.reservation;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter @Setter
public class SearchReservationRentalCarVo {

    private String rentalPlaceCd; //렌트 지점 No
    private String returnPlaceCd; //반납 지점 No

    private String rentalDate; //대여날짜
    private String returnDate; //반납날짜
    private long differTimes; //대여시간 차이 : ex) 1시간 => 6
    private int per; //할인
    
    private List<String> typeCodes; //차종
    private List<String> fuelCodes; //연료
    private List<Integer> seaters; //인승

}
