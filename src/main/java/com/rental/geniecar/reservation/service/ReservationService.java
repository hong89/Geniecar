package com.rental.geniecar.reservation.service;

import com.rental.geniecar.common.dao.CommonDao;
import com.rental.geniecar.domain.branch.RentalCarBranchVo;
import com.rental.geniecar.domain.car.NewCarVo;
import com.rental.geniecar.domain.member.PointVo;
import com.rental.geniecar.domain.reservation.*;
import com.rental.geniecar.infra.util.DateUtil;
import com.rental.geniecar.point.dao.PointDao;
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
    private final PointDao pointDao;

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
        PointVo pointVo = pointDao.selectPoint(rentalCarReservationStep2Vo.getReservationMemberId());

        if(pointVo != null) rentalCarReservationStep2Vo.setAvailablePoint(pointVo.getCurrentPoint());

        return rentalCarReservationStep2Vo;
    }

    //렌트카 예약 완료
    public RentalCarReservationVo saveRentalCarReservationSuccess(ReservationSaveVo reservationSaveVo) {

        reservationSaveVo.setReservationMemberId(reservationSaveVo.getRegId());

        String carIdentification = reservationDao.selectOneAvailableRentalCarIdentificationNumber(reservationSaveVo);
        reservationSaveVo.setCarIdentificationNumber(carIdentification);
        reservationDao.saveRentalCarReservation(reservationSaveVo);
        reservationDao.savePayment(reservationSaveVo);

        RentalCarReservationVo rentalCarReservationVo = reservationDao.selectReservationOne(reservationSaveVo.getReservationNo());

        int addPoint = (int) ((reservationSaveVo.getRegularPrice() - reservationSaveVo.getUsePoint()) * 0.1);
        PointVo addPointVo = new PointVo(addPoint, "+", reservationSaveVo.getReservationNo(), reservationSaveVo.getReservationMemberId());
        pointDao.savePoint(addPointVo);

        if(reservationSaveVo.getUsePoint() > 0) {
            PointVo pointVo = new PointVo(reservationSaveVo.getUsePoint(), "-", reservationSaveVo.getReservationNo(), reservationSaveVo.getReservationMemberId());
            pointDao.savePoint(pointVo);
        }

        return rentalCarReservationVo;
    }

    public void updateReservationCancel(String reservationNo) {
        reservationDao.updateReservationCancel(reservationNo);
    }
}
