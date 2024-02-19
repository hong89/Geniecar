package com.rental.geniecar.consult.service;

import com.rental.geniecar.consult.dao.ConsultDao;
import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.customer.ConsultVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class ConsultService {

    private final ConsultDao consultDao;

    public void insertConsult(ConsultVo consultVo) {
        consultDao.insertConsult(consultVo);
    }

    public List<ConsultVo> selectConsultList(Pagination pagination) {
        return consultDao.selectConsultList(pagination);
    }

    public List<ConsultVo> selectAdminConsultList(Pagination pagination) {
        return consultDao.selectAdminConsultList(pagination);
    }
}
