package com.rental.geniecar.admin.car.service;

import com.rental.geniecar.admin.car.dao.AdminCarDao;
import com.rental.geniecar.domain.branch.BranchRentalCarVo;
import com.rental.geniecar.domain.car.NewCarVo;
import com.rental.geniecar.domain.car.RentalCarVo;
import com.rental.geniecar.domain.car.RentalCostVo;
import com.rental.geniecar.domain.car.RequestNewCarVo;
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

    public int totalCount(Pagination pagination){
        return adminCarDao.totalCount(pagination);
    };

    public List<RentalCarVo> selectRentalCars(NewCarVo code) {
        return adminCarDao.selectRentalCars(code);
    }

    public void insertRentalCarBranchesCar(List<String> checkCar, String branches) {
        for(String car : checkCar) {
            adminCarDao.insertRentalCarBranch(car, branches);
            adminCarDao.updateRentalCar(car);
        }
    }

    public List<BranchRentalCarVo> selectBranchesCarList(Pagination pagination) {
        return adminCarDao.selectBranchesCarList(pagination);
    }

    public int branchesTotalCount(Pagination pagination) {
        return adminCarDao.branchesTotalCount(pagination);
    }

    public void insertNewCars(RequestNewCarVo requestNewCarVo) {
        if(requestNewCarVo != null && requestNewCarVo.getRentalCosts() != null && !requestNewCarVo.getRentalCosts().isEmpty()) {
            NewCarVo newCarVo = new NewCarVo();
            newCarVo.setCompany(requestNewCarVo.getCompany());
            newCarVo.setCarTypeCode(requestNewCarVo.getCarTypeCode());
            newCarVo.setCarName(requestNewCarVo.getCarName());

            for (RentalCostVo rentalCostVo : requestNewCarVo.getRentalCosts()){
                if(rentalCostVo.getCarFuelCode() != null && rentalCostVo.getDefaultCost() != null) {
                    newCarVo.setCarFuelCode(rentalCostVo.getCarFuelCode());
                    newCarVo.setDefaultCost(rentalCostVo.getDefaultCost());
                    adminCarDao.insertNewCar(newCarVo);
                }
            }
        }
    }

    @Transactional(readOnly = true)
    public List<NewCarVo> selectCarNameList(NewCarVo newCarVo) {
        return adminCarDao.selectCarNameList(newCarVo);
    }

    public List<NewCarVo> selectNewCarList(Pagination pagination) {
        return adminCarDao.selectNewCarList(pagination);
    }

    public int newCarTotalCount(Pagination pagination) {
        return adminCarDao.newCarTotalCount(pagination);
    }

    public void updateNewCar(NewCarVo newCarVo) {
        adminCarDao.updateNewCar(newCarVo);
    }

    public void deleteNewCar(int no) {
        adminCarDao.deleteNewCar(no);
    }
}
