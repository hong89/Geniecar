package com.rental.geniecar.admin.car.dao;

import com.rental.geniecar.domain.car.NewCarVo;
import com.rental.geniecar.domain.car.RentalCarVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminCarDao {

    List<NewCarVo> selectCarByFullCode(String carNameCode);
    void insertRentalCar(RentalCarVo rentalCarVo);

    List<RentalCarVo> selectStockList();
}
