package com.rental.geniecar.map.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rental.geniecar.domain.map.PlaceVo;
import com.rental.geniecar.map.service.PlaceService;

@Controller
@RequestMapping("/place")
public class PlaceController {

    private final PlaceService placeService;

    @Autowired
    public PlaceController(PlaceService placeService) {
        this.placeService = placeService;
    }
    
    // JJ
    // 지도 위치 가져오기
    @ResponseBody
    @GetMapping("/getPlace.do")
    public ResponseEntity getPlace(PlaceVo vo) {
        return ResponseEntity.ok(placeService.getPlace(vo));
    }
}
