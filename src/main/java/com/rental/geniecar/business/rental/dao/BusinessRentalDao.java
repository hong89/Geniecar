package com.rental.geniecar.business.rental.dao;

import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.reservation.RentalCarReservationVo;
import com.rental.geniecar.domain.reservation.ReservationDetailVo;
import com.rental.geniecar.domain.reservation.ReservationVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface BusinessRentalDao {

    List<RentalCarReservationVo> selectReservationList(Pagination pagination);

    int totalCount(Pagination pagination);

    List<RentalCarReservationVo> selectCompleteList(Pagination pagination);

    int completeTotalCount(Pagination pagination);
    List<RentalCarReservationVo> selectProgressList(Pagination pagination);

    int progressTotalCount(Pagination pagination);

    ReservationDetailVo selectDetail(@Param("reservationNo") String reservationNo, @Param("branchCode") String branchCode);

    int cancelTotalCount(Pagination pagination);

    List<RentalCarReservationVo> selectCancelList(Pagination pagination);

    void updateReservation(@Param("reservationNo") String reservationNo, @Param("id") String id);

}
