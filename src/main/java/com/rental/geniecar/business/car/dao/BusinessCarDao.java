package com.rental.geniecar.business.car.dao;

import com.rental.geniecar.domain.branch.BranchCarVo;
import com.rental.geniecar.domain.car.ResponseBranchCarVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BusinessCarDao {
    List<BranchCarVo> selectBranchesCarByBranchCode(String branchCode);

    List<BranchCarVo> selectAssignCarByBranchCode(String branchCode);

    void modifyRentalCarBranchesCar(String carNumber, String memberId);

    void modifyRentalCarCostUpdate(String carNumber);

    ResponseBranchCarVo selectCarDetail(String carIdentificationNumber, String branchCode);
}
