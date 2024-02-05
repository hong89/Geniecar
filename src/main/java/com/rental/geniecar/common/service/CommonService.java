package com.rental.geniecar.common.service;

import com.rental.geniecar.common.dao.CommonDao;
import com.rental.geniecar.domain.common.CommonCodeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class CommonService {
    private final CommonDao commonDao;


    public List<CommonCodeVo> selectCommonCodes(String groupCode) {
        return commonDao.selectCommonCodes(groupCode);
    }

    public List<CommonCodeVo> selectCommonSubCodes(String groupCode) {
        return commonDao.selectCommonSubCodes(groupCode);
    }
}
