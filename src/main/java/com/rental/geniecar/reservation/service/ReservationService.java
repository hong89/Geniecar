package com.rental.geniecar.reservation.service;

import com.rental.geniecar.reservation.dao.ReservationDao;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
@RequiredArgsConstructor
public class ReservationService {

    private final ReservationDao reservationDao;

}
