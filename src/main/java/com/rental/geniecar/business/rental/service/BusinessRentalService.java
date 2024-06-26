package com.rental.geniecar.business.rental.service;

import com.rental.geniecar.business.rental.dao.BusinessRentalDao;
import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.reservation.RentalCarReservationVo;
import com.rental.geniecar.domain.reservation.ReservationDetailVo;
import com.rental.geniecar.domain.reservation.ReservationVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@RequiredArgsConstructor
@Service
@Transactional
public class BusinessRentalService {

    private final BusinessRentalDao businessRentalDao;

    public List<RentalCarReservationVo> selectReservationList(Pagination pagination) {
        return businessRentalDao.selectReservationList(pagination);
    }

    public int totalCount(Pagination pagination) {
        return businessRentalDao.totalCount(pagination);
    }

    public List<RentalCarReservationVo> selectCompleteList(Pagination pagination) {
        return businessRentalDao.selectCompleteList(pagination);
    }

    public int completeTotalCount(Pagination pagination) {
        return businessRentalDao.completeTotalCount(pagination);
    }
    public List<RentalCarReservationVo> selectProgressList(Pagination pagination) {
        return businessRentalDao.selectProgressList(pagination);
    }

    public int progressTotalCount(Pagination pagination) {
        return businessRentalDao.progressTotalCount(pagination);
    }
    public ReservationDetailVo selectDetail(String reservationNo, String branchCode) {
        return businessRentalDao.selectDetail(reservationNo, branchCode);
    }

    public int cancelTotalCount(Pagination pagination) {
        return businessRentalDao.cancelTotalCount(pagination);
    }

    public List<RentalCarReservationVo> selectCancelList(Pagination pagination) {
        return businessRentalDao.selectCancelList(pagination);
    }

    public void updateReservation(String reservationNo, String id) {
        businessRentalDao.updateReservation(reservationNo, id);
    }

}
