package com.rental.geniecar.admin.car.controller;

import com.rental.geniecar.admin.car.service.AdminCarService;
import com.rental.geniecar.common.service.CommonService;
import com.rental.geniecar.domain.branch.BranchRentalCarVo;
import com.rental.geniecar.domain.car.NewCarVo;
import com.rental.geniecar.domain.car.RentalCarVo;
import com.rental.geniecar.domain.common.CommonCodeVo;
import com.rental.geniecar.domain.common.Pagination;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/car/")
public class AdminCarController {

    private final CommonService commonService;
    private final AdminCarService adminCarService;

    // hsh
    @GetMapping("/list.do")
    public String list(Pagination pagination, Model model) {
        List<CommonCodeVo> branches = commonService.selectCommonSubCodes("LOC");
        pagination.setTotalRecordCount(adminCarService.branchesTotalCount(pagination));
        List<BranchRentalCarVo> carList = adminCarService.selectBranchesCarList(pagination);

        model.addAttribute("branches", branches);
        model.addAttribute("pagination", pagination);
        model.addAttribute("carList", carList);
        return "admin/car/list";
    }

    // hsh
    @GetMapping("/stockList.do")
    public String stockList(Pagination pagination, Model model) {
        List<CommonCodeVo> companies = commonService.selectCommonCodes("COM");
        pagination.setTotalRecordCount(adminCarService.totalCount(pagination));
        List<RentalCarVo> rentalCarList = adminCarService.selectStockList(pagination);

        model.addAttribute("rentalCarList", rentalCarList);
        model.addAttribute("pagination", pagination);
        model.addAttribute("companies", companies);

        return "admin/car/stockList";
    }

    // hsh
    @GetMapping("/changeBranch.do")
    public String changeBranch(Model model) {
        List<CommonCodeVo> locations = commonService.selectCommonCodes("LOC");
        model.addAttribute("locations", locations);
        List<CommonCodeVo> companies = commonService.selectCommonCodes("COM");
        model.addAttribute("companies", companies);
        return "admin/car/changeBranch";
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

    //hsh
    @PostMapping("/insertRentalCar.do")
    public String insertRentalCar(RentalCarVo rentalCarVo) {
        adminCarService.insertRentalCar(rentalCarVo);
        return "redirect:stockList.do";
    }

    //hsh
    @PostMapping("/insertBranchesCar.do")
    public String insertBranchesCar(@RequestParam List<String> checkCar, @RequestParam String branches) {
        adminCarService.insertRentalCarBranchesCar(checkCar, branches);
        return "redirect:list.do";
    }
    //hsh
    @PostMapping("/insertNewCar.do")
    public String insertNewCar() {
        return "redirect:list.do";
    }

    //hsh
    @GetMapping("/selectRentalCars.do")
    public ResponseEntity selectRentalCars(String code) {
        List<RentalCarVo> carList = adminCarService.selectRentalCars(code);
        return ResponseEntity.ok(carList);
    }


    @GetMapping("/newCarRegister.do")
    public String newCarRegister() {
        return "admin/car/newCarRegister";
    }

    @GetMapping("/remove.do")
    public String remove() {
        return "admin/car/remove";
    }
}
