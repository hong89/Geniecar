package com.rental.geniecar.business.car.service;

import com.rental.geniecar.business.car.dao.BusinessCarDao;
import com.rental.geniecar.domain.branch.BranchCarVo;
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

}
