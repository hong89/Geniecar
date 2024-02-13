package com.rental.geniecar.admin.car.dao;

import com.rental.geniecar.domain.branch.BranchRentalCarVo;
import com.rental.geniecar.domain.car.NewCarVo;
import com.rental.geniecar.domain.car.RentalCarVo;
import com.rental.geniecar.domain.common.Pagination;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminCarDao {

    List<NewCarVo> selectCarByFullCode(String carNameCode);
    void insertRentalCar(RentalCarVo rentalCarVo);

    List<RentalCarVo> selectStockList(Pagination pagination);

    int totalCount(Pagination pagination);

    List<RentalCarVo> selectRentalCars(NewCarVo code);

    void insertRentalCarBranch(String car, String branch);

    void updateRentalCar(String car);

    List<BranchRentalCarVo> selectBranchesCarList(Pagination pagination);

    int branchesTotalCount(Pagination pagination);

    void insertNewCar(NewCarVo newCarVo);

    List<NewCarVo> selectCarNameList(NewCarVo newCarVo);

    List<NewCarVo> selectNewCarList(Pagination pagination);

    int newCarTotalCount(Pagination pagination);

    void updateNewCar(NewCarVo newCarVo);

    void deleteNewCar(int no);
}
