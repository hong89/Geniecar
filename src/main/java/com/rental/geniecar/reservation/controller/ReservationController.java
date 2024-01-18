package com.rental.geniecar.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reservation")
public class ReservationController {

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
	
	@GetMapping("/index.do")
	public String index(){
		
        return "reservation/index";
    }

	
}
