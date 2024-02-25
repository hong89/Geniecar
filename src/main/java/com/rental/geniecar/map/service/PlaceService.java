package com.rental.geniecar.map.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rental.geniecar.domain.map.PlaceVo;
import com.rental.geniecar.map.dao.PlaceDao;

import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class PlaceService{

	private final PlaceDao placeDao;
    public List<PlaceVo> getPlace(PlaceVo vo) {
        return placeDao.selectPlace(vo);
    }
}
