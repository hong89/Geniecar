package com.rental.geniecar.reservation.dao;

import com.rental.geniecar.domain.branch.RentalCarBranchVo;
import com.rental.geniecar.domain.car.NewCarVo;
import com.rental.geniecar.domain.reservation.RentalCarReservationVo;
import com.rental.geniecar.domain.reservation.ReservationRentalCarVo;
import com.rental.geniecar.domain.reservation.ReservationSaveVo;
import com.rental.geniecar.domain.reservation.SearchReservationRentalCarVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReservationDao {
    List<RentalCarBranchVo> selectBranchesByLocationCode(String locationCode);
    //렌트카 단기예약 검색 조회
    List<ReservationRentalCarVo> selectRentalCarReservationSearchCar(SearchReservationRentalCarVo searchReservationRentalCarVo);

    NewCarVo selectDetailCar(int carNo);

    String selectReservationNo();

    RentalCarReservationVo saveRentalCarReservationSuccess(ReservationSaveVo reservationSaveVo);

    void saveRentalCarReservation(ReservationSaveVo reservationSaveVo);

    void savePayment(ReservationSaveVo reservationSaveVo);

    RentalCarReservationVo selectReservationOne(String reservationNo);
}
