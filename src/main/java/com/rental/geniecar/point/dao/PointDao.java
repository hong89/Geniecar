package com.rental.geniecar.point.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.rental.geniecar.domain.member.PointVo;

@Mapper
public interface PointDao {

	public List<PointVo> selectAll(String memberId);
	public void delete(String memberId);
	public PointVo selectPoint(String memberId);
}
