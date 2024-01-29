package com.rental.geniecar.member.dao;

import org.apache.ibatis.annotations.Mapper;

import com.rental.geniecar.domain.member.MemberVo;

@Mapper
public interface MemberDao {

	public void insertMember(MemberVo vo);
	public String overlapped(String id);
	public void updateWithdrawalYn(String id);
	
}
