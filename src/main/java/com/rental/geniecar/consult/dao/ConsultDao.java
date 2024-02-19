package com.rental.geniecar.consult.dao;

import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.customer.ConsultVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ConsultDao {

    void insertConsult(ConsultVo consultVo);

    List<ConsultVo> selectConsultList(Pagination pagination);

    List<ConsultVo> selectAdminConsultList(Pagination pagination);
}
