package com.rental.geniecar.point.service;

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
	
	public PointVo secletAll(String memberId) {
		return pointDao.selectAll(memberId);
	}
}
