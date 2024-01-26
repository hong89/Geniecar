package com.rental.geniecar.common.service;

import com.rental.geniecar.common.dao.CommonDao;
import com.rental.geniecar.common.domain.CommonCodeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class CommonService {
    private final CommonDao commonDao;

    public List<CommonCodeVo> selectLocations() {
        return commonDao.selectLocations();
    }

    public List<CommonCodeVo> selectBranch(String branchCode) {
        return commonDao.selectBranch(branchCode);
    }
}
