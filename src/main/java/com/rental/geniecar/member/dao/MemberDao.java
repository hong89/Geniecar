package com.rental.geniecar.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.rental.geniecar.domain.member.MemberVo;

@Mapper
public interface MemberDao {

	public void insertMember(MemberVo vo);
	public String overlapped(String id);
	public MemberVo selectOne(String id);
	public void updateWithdrawalYn(String id);
	public void updateMember(MemberVo vo);
	public List<MemberVo> selectAll();
	
}
