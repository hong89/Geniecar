package com.rental.geniecar.reservation.controller;

import com.rental.geniecar.common.domain.CommonCodeVo;
import com.rental.geniecar.common.service.CommonService;
import com.rental.geniecar.reservation.service.ReservationService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/reservation")
public class ReservationController {

    private final ReservationService reservationService;
    private final CommonService commonService;

	@GetMapping("/shortMonth/info.do")
	public String shortMonthInfo(){
		
        return "reservation/shortMonth/info";
    }
	
	@GetMapping("/shortMonth/reservationMonthApply.do")
	public String shortreservationMonthApply(){
		
        return "reservation/shortMonth/reservationMonthApply";
    }
	
	
	@GetMapping("/shortInfo/pay.do")
	public String shortInfoPay(){
		
        return "reservation/shortInfo/pay";
    }
	
	@GetMapping("/shortInfo/checkIn.do")
	public String shortInfoCheckIn(){
		
        return "reservation/shortInfo/checkIn";
    }
	
	@GetMapping("/shortInfo/service.do")
	public String shortInfoService(){
		
        return "reservation/shortInfo/service";
    }

    // HSH
	@GetMapping("/index.do")
	public String index(Model model){
        List<CommonCodeVo> codeList = commonService.selectAll();
        model.addAttribute("codeList", codeList);
        return "reservation/index";
    }

	
}
