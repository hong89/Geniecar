package com.rental.geniecar.admin.rental.service;

import com.rental.geniecar.admin.rental.dao.AdminRentalDao;
import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.reservation.RentalCarReservationVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class AdminRentalService {

    private final AdminRentalDao adminRentalDao;


    public List<RentalCarReservationVo> selectReservationList(Pagination pagination) {
        return adminRentalDao.selectReservationList(pagination);
    }

    public int totalCount(Pagination pagination) {
        return adminRentalDao.totalCount(pagination);
    }

    public List<RentalCarReservationVo> selectCompleteList(Pagination pagination) {
        return adminRentalDao.selectCompleteList(pagination);
    }

    public int completeTotalCount(Pagination pagination) {
        return adminRentalDao.completeTotalCount(pagination);
    }
}
