package com.rental.geniecar.business.car.dao;

import com.rental.geniecar.domain.branch.BranchCarVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BusinessCarDao {
    List<BranchCarVo> selectBranchesCarByBranchCode(String branchCode);

}
