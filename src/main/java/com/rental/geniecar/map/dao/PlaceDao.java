package com.rental.geniecar.map.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.rental.geniecar.domain.map.PlaceVo;

@Mapper
public interface PlaceDao {
    List<PlaceVo> selectPlace(PlaceVo vo);
}
