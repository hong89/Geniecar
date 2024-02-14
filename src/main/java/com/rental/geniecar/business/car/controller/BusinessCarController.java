package com.rental.geniecar.business.car.controller;

import com.rental.geniecar.business.car.service.BusinessCarService;
import com.rental.geniecar.domain.branch.BranchCarVo;
import com.rental.geniecar.domain.car.ResponseBranchCarVo;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
    public String assignList(Model model, String branchCode){   // 대리점 코드 필수
        List<BranchCarVo> rentalCarList = businessCarService.selectAssignCarByBranchCode("SEO001");
        model.addAttribute("rentalCarList", rentalCarList);
        return "business/car/assignList";
    }

    //hsh
    @GetMapping("/register.do")
    public String register(){
        return "business/car/register";
    }

    @ResponseBody
    @GetMapping("/modifyRentalCarBranchesCar.do")
    public ResponseEntity modifyRentalCarBranchesCar(String carNumber, String branchCode, String memberId){  // 로그인 아이디
        businessCarService.modifyRentalCarBranchesCar(carNumber, branchCode, "hong");
        return ResponseEntity.ok("성공");
    }
    @GetMapping("/remove.do")
    public String remove(){
        return "business/car/remove";
    }

    @GetMapping("/carDetail.do")
    public String carDetail(@RequestParam("carIdentificationNumber") String carIdentificationNumber, Model model){
        ResponseBranchCarVo car = businessCarService.selectCarDetail(carIdentificationNumber);
        model.addAttribute("car", car);
        return "business/car/carDetail";
    }
}
