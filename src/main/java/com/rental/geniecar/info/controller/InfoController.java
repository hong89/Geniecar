package com.rental.geniecar.info.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.FileVo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/info")
public class InfoController {

	@GetMapping("/shortMonth.do")
	public String shortMonthInfo(){
		return "info/shortMonth";
	}

	@GetMapping("/commuteRent.do")
	public String commuteRent() {
		return "info/commuteRent";
	}

	@GetMapping("/pay.do")
	public String shortInfoPay(){
		return "info/pay";
	}

	@GetMapping("/checkIn.do")
	public String shortInfoCheckIn(){
		return "info/checkIn";
	}

	@GetMapping("/service.do")
	public String shortInfoService(){
		return "info/service";
	}

}
