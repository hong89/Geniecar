package com.rental.geniecar.admin.car.controller;

import com.rental.geniecar.admin.car.service.AdminCarService;
import com.rental.geniecar.common.service.CommonService;
import com.rental.geniecar.domain.car.NewCarVo;
import com.rental.geniecar.domain.car.RentalCarVo;
import com.rental.geniecar.domain.common.CommonCodeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/car/")
public class AdminCarController {

    private final CommonService commonService;
    private final AdminCarService adminCarService;

    @GetMapping("/list.do")
    public String list() {
        return "admin/car/list";
    }

    // hsh
    @ResponseBody
    @GetMapping("/selectCodeByGroupCode.do")
    public ResponseEntity selectCodeByGroupCode(String groupCode) {
        List<CommonCodeVo> carNameCodes = commonService.selectCommonCodes(groupCode);
        return ResponseEntity.ok(carNameCodes);
    }

    // hsh
    @ResponseBody
    @GetMapping("/selectCarByFullCode.do")
    public ResponseEntity selectCarByFullCode(String carNameCode) {
        List<NewCarVo> carList = adminCarService.selectCarByFullCode(carNameCode);
        return ResponseEntity.ok(carList);
    }

    //hsh
    @GetMapping("/register.do")
    public String register(Model model) {
        model.addAttribute("codeList", commonService.selectCommonCodes("COM"));
        return "admin/car/register";
    }

    @PostMapping("/insertRentalCar.do")
    public String insertRentalCar(RentalCarVo rentalCarVo){
        adminCarService.insertRentalCar(rentalCarVo);
        return "admin/car/list";
    };

    @GetMapping("/modify.do")
    public String modify() {
        return "admin/car/modify";
    }

    @GetMapping("/remove.do")
    public String remove() {
        return "admin/car/remove";
    }
}
