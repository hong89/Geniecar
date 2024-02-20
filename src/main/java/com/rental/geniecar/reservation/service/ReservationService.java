package com.rental.geniecar.reservation.service;

import com.rental.geniecar.common.dao.CommonDao;
import com.rental.geniecar.domain.branch.RentalCarBranchVo;
import com.rental.geniecar.domain.car.NewCarVo;
import com.rental.geniecar.domain.reservation.*;
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
    private final CommonDao commonDao;

    public List<RentalCarBranchVo> selectBranchesByLocationCode(String locationCode) {
        return reservationDao.selectBranchesByLocationCode(locationCode);
    }

    //렌트 예약 차 목록 조회
    public List<ReservationRentalCarVo> selectRentalCarReservationSearchCar(SearchReservationRentalCarVo searchReservationRentalCarVo) throws ParseException {
        long tenMinutes = DateUtil.dateDifferToMinutes(searchReservationRentalCarVo.getRentalDate(), searchReservationRentalCarVo.getReturnDate()) / 10;
        searchReservationRentalCarVo.setDifferTimes(tenMinutes);
        int per = perCal(tenMinutes / 6);

        searchReservationRentalCarVo.setPer(per);
        List<ReservationRentalCarVo> reservationRentalCarVos = reservationDao.selectRentalCarReservationSearchCar(searchReservationRentalCarVo);

        return reservationRentalCarVos;
    }

    private int perCal(long tenMinutes){

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

        return per;
    }


    // 예약 상세
    public RentalCarReservationStep2Vo reservationStep2(RentalCarReservationStep2Vo rentalCarReservationStep2Vo) throws ParseException  {

        rentalCarReservationStep2Vo.setRentalPlaceName(commonDao.selectCommonCode(rentalCarReservationStep2Vo.getRentalPlace()).getCodeName());
        rentalCarReservationStep2Vo.setReturnPlaceName(commonDao.selectCommonCode(rentalCarReservationStep2Vo.getReturnPlace()).getCodeName());
        NewCarVo newCarVo = reservationDao.selectDetailCar(rentalCarReservationStep2Vo.getCarNo());
        rentalCarReservationStep2Vo.setCarName(newCarVo.getCarName());


        String reservationNo = reservationDao.selectReservationNo();
        rentalCarReservationStep2Vo.setReservationNo(reservationNo);


        return rentalCarReservationStep2Vo;
    }

    //렌트카 예약 완료
    public RentalCarReservationVo saveRentalCarReservationSuccess(ReservationSaveVo reservationSaveVo) {

        //NewCarVo newCarVo = reservationDao.selectDetailCar(reservationSaveVo.getCarNo());
        reservationSaveVo.setReservationMemberId(reservationSaveVo.getRegId());

        //TODO 빌릴 차대 번호 추출, 포인트 적용 필요
        reservationSaveVo.setCarIdentificationNumber("ROKCVL07MNU710765");
        reservationDao.saveRentalCarReservation(reservationSaveVo);
        reservationDao.savePayment(reservationSaveVo);

        RentalCarReservationVo rentalCarReservationVo = reservationDao.selectReservationOne(reservationSaveVo.getReservationNo());

        return rentalCarReservationVo;
    }
}
