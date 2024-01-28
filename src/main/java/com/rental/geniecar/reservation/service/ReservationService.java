package com.rental.geniecar.reservation.service;

import com.rental.geniecar.domain.branch.RentalCarBranchVo;
import com.rental.geniecar.reservation.dao.ReservationDao;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class ReservationService {

    private final ReservationDao reservationDao;

    public List<RentalCarBranchVo> selectBranchesByLocationCode(String locationCode) {
        return reservationDao.selectBranchesByLocationCode(locationCode);
    }
}
