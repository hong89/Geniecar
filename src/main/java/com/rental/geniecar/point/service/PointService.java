package com.rental.geniecar.point.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rental.geniecar.domain.member.PointVo;
import com.rental.geniecar.point.dao.PointDao;

import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class PointService {

	private final PointDao pointDao;
	
	public List<PointVo> secletAll(String memberId) {
		return pointDao.selectAll(memberId);
	}
	public void delete(String id) {
		pointDao.delete(id);
	}
	public PointVo selectPoint(String memberId){
		return pointDao.selectPoint(memberId);		
	}
	public PointVo selectOne(String no) {
		return pointDao.selectOne(no);
	}
}
