package com.rental.geniecar.business.car.controller;

import com.rental.geniecar.business.car.service.BusinessCarService;
import com.rental.geniecar.domain.branch.BranchCarVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/business/car/")
public class BusinessCarController {

    private final BusinessCarService businessCarService;
    @GetMapping("/list.do")
    public String list(Model model, String branchCode){  // 대리점 코드 필수
        List<BranchCarVo> branchRentalCar = businessCarService.selectBranchesCarByBranchCode("SEO001");
        model.addAttribute("branchRentalCar", branchRentalCar);
        return "business/car/list";
    }

    //hsh
    @GetMapping("/assignList.do")
    public String assignList(Model model, String branchCode){
        List<BranchCarVo> rentalCarList = businessCarService.selectBranchesCarByBranchCode("SEO001");
        model.addAttribute("rentalCarList", rentalCarList);
        return "business/car/assignList";
    }

    //hsh
    @GetMapping("/register.do")
    public String register(){
        return "business/car/register";
    }
    @GetMapping("/modify.do")
    public String modify(){
        return "business/car/modify";
    }
    @GetMapping("/remove.do")
    public String remove(){
        return "business/car/remove";
    }
}
