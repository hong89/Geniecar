package com.rental.geniecar.login.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.rental.geniecar.domain.member.MemberVo;

@Mapper
public interface LoginDao {

	public MemberVo login(Map<String, String> map);
}
