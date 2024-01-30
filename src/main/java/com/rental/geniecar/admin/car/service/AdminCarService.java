package com.rental.geniecar.admin.car.service;

import com.rental.geniecar.admin.car.dao.AdminCarDao;
import com.rental.geniecar.domain.car.NewCarVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class AdminCarService {

    private final AdminCarDao adminCarDao;

    public List<NewCarVo> selectCarByFullCode(String carNameCode) {
        return adminCarDao.selectCarByFullCode(carNameCode);
    }
}
