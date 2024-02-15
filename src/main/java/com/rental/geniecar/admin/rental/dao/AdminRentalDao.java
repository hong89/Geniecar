package com.rental.geniecar.admin.rental.dao;

import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.reservation.RentalCarReservationVo;
import com.rental.geniecar.domain.reservation.ReservationVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminRentalDao {


    List<RentalCarReservationVo> selectReservationList(Pagination pagination);

    int totalCount(Pagination pagination);

    List<RentalCarReservationVo> selectCompleteList(Pagination pagination);

    int completeTotalCount(Pagination pagination);
    List<RentalCarReservationVo> selectProgressList(Pagination pagination);

    int progressTotalCount(Pagination pagination);

    ReservationVo selectDetail(String reservationNo);
}
