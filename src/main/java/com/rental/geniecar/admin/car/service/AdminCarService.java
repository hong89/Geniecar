package com.rental.geniecar.admin.car.service;

import com.rental.geniecar.admin.car.dao.AdminCarDao;
import com.rental.geniecar.domain.car.NewCarVo;
import com.rental.geniecar.domain.car.RentalCarVo;
import com.rental.geniecar.domain.common.Pagination;
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

    public void insertRentalCar(RentalCarVo rentalCarVo){
        adminCarDao.insertRentalCar(rentalCarVo);
    };

    public List<RentalCarVo> selectStockList(Pagination pagination) {
        return adminCarDao.selectStockList(pagination);
    }

    public int totalCount(){
        return adminCarDao.totalCount();
    };

    public List<RentalCarVo> selectRentalCars(String code) {
        return adminCarDao.selectRentalCars(code);
    }

    public void insertRentalCarBranchesCar(List<String> checkCar, String branches) {
        for(String car : checkCar) {
            adminCarDao.insertRentalCarBranch(car, branches);
            adminCarDao.updateRentalCar(car);
        }
    }
}
