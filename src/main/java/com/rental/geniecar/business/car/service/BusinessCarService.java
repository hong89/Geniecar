package com.rental.geniecar.business.car.service;

import com.rental.geniecar.business.car.dao.BusinessCarDao;
import com.rental.geniecar.domain.branch.BranchCarVo;
import com.rental.geniecar.domain.car.ResponseBranchCarVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class BusinessCarService {

    private final BusinessCarDao businessCarDao;
    public List<BranchCarVo> selectBranchesCarByBranchCode(String branchCode) {
        return businessCarDao.selectBranchesCarByBranchCode(branchCode);
    }

    public List<BranchCarVo> selectAssignCarByBranchCode(String branchCode) {
        return businessCarDao.selectAssignCarByBranchCode(branchCode);
    }

    public void modifyRentalCarBranchesCar(String carNumber, String branchCode, String memberId) {
        businessCarDao.modifyRentalCarBranchesCar(carNumber, branchCode, memberId);
        businessCarDao.modifyRentalCarCostUpdate(carNumber);
    }

    public ResponseBranchCarVo selectCarDetail(String carIdentificationNumber) {
        return businessCarDao.selectCarDetail(carIdentificationNumber);
    }
}
