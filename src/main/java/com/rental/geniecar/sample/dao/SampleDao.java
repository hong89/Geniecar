package com.rental.geniecar.sample.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SampleDao {

    int selectCount();
}
