package com.rental.geniecar.common.dao;

import com.rental.geniecar.domain.common.CommonCodeVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface
CommonDao {

    List<CommonCodeVo> selectCommonCodes(String groupCode);

}
