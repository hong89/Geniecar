package com.rental.geniecar.reservation.dao;

import com.rental.geniecar.domain.branch.RentalCarBranchVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReservationDao {
    List<RentalCarBranchVo> selectBranchesByLocationCode(String locationCode);
}
