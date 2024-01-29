package com.rental.geniecar.point.dao;

import org.apache.ibatis.annotations.Mapper;

import com.rental.geniecar.domain.member.PointVo;

@Mapper
public interface PointDao {

	public void createNewPoint(String memberId);
	public PointVo selectAll(String memberId);
}
