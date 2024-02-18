package com.rental.geniecar.reservation.service;

import com.rental.geniecar.domain.branch.RentalCarBranchVo;
import com.rental.geniecar.domain.reservation.ReservationRentalCarVo;
import com.rental.geniecar.domain.reservation.SearchReservationRentalCarVo;
import com.rental.geniecar.infra.util.DateUtil;
import com.rental.geniecar.reservation.dao.ReservationDao;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class ReservationService {

    private final ReservationDao reservationDao;

    public List<RentalCarBranchVo> selectBranchesByLocationCode(String locationCode) {
        return reservationDao.selectBranchesByLocationCode(locationCode);
    }

    //렌트 예약 차 목록 조회
    public List<ReservationRentalCarVo> selectRentalCarReservationSearchCar(SearchReservationRentalCarVo searchReservationRentalCarVo) throws ParseException {
        long tenMinutes = DateUtil.dateDifferToMinutes(searchReservationRentalCarVo.getRentalDate(), searchReservationRentalCarVo.getReturnDate()) / 10;
        searchReservationRentalCarVo.setDifferTimes(tenMinutes);
        long hour = tenMinutes / 6;

        int per = 0;
        if (hour >= 24 * 14){
            per = 90;
        }
        else if(hour >= 24 * 7){
            per = 85;
        }
        else if(hour >= 24 * 3){
            per = 80;
        }
        else if(hour >= 24){
            per = 75;
        }
        else if(hour >= 12){
            per = 65;
        }
        else if(hour >= 6){
            per = 55;
        }

        searchReservationRentalCarVo.setPer(per);
        List<ReservationRentalCarVo> reservationRentalCarVos = reservationDao.selectRentalCarReservationSearchCar(searchReservationRentalCarVo);

        return reservationRentalCarVos;
    }


}
