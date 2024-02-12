package com.rental.geniecar.admin.car.controller;

import com.rental.geniecar.admin.car.service.AdminCarService;
import com.rental.geniecar.common.service.CommonService;
import com.rental.geniecar.domain.branch.BranchRentalCarVo;
import com.rental.geniecar.domain.car.NewCarVo;
import com.rental.geniecar.domain.car.RentalCarVo;
import com.rental.geniecar.domain.car.RequestNewCarVo;
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
        model.addAttribute("locations", commonService.selectCommonCodes("LOC"));
        model.addAttribute("companies", commonService.selectCommonCodes("COM"));
        model.addAttribute("segCodeList", commonService.selectCommonCodes("SEG"));
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
    @GetMapping("/selectCarNameList.do")
    @ResponseBody
    public ResponseEntity selectCarNameList(NewCarVo newCarVo){
        List<NewCarVo> carList = adminCarService.selectCarNameList(newCarVo);
        return ResponseEntity.ok(carList);
    }

    //hsh
    @GetMapping("/register.do")
    public String register(Model model) {
        model.addAttribute("codeList", commonService.selectCommonCodes("COM"));
        model.addAttribute("fuelCodeList", commonService.selectCommonCodes("FUE"));
        model.addAttribute("segCodeList", commonService.selectCommonCodes("SEG"));
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
    @PostMapping("/insertNewCars.do")
    public String insertNewCars(RequestNewCarVo requestNewCarVo) {
        adminCarService.insertNewCars(requestNewCarVo);
        return "redirect:newCarList.do";
    }

    //hsh
    @GetMapping("/selectRentalCars.do")
    public ResponseEntity selectRentalCars(NewCarVo newCarVo) {
        List<RentalCarVo> carList = adminCarService.selectRentalCars(newCarVo);
        return ResponseEntity.ok(carList);
    }

    //hsh
    @GetMapping("/newCarRegister.do")
    public String newCarRegister(Model model) {
        List<CommonCodeVo> companies = commonService.selectCommonCodes("COM");
        List<CommonCodeVo> carsType = commonService.selectCommonCodes("SEG");
        List<CommonCodeVo> carsFuel = commonService.selectCommonCodes("FUE");
        model.addAttribute("companies", companies);
        model.addAttribute("carsType", carsType);
        model.addAttribute("carsFuel", carsFuel);
        return "admin/car/newCarRegister";
    }

    //hsh
    @GetMapping("/newCarList.do")
    public String newCarList(Pagination pagination, Model model) {
        pagination.setTotalRecordCount(adminCarService.newCarTotalCount(pagination));
        List<NewCarVo> newCarList = adminCarService.selectNewCarList(pagination);
        model.addAttribute("newCarList", newCarList);
        model.addAttribute("pagination", pagination);
        return "admin/car/newCarList";
    }

    @PostMapping("/newCarModify.do")
    public String newCarModify(NewCarVo newCarVo){
        adminCarService.updateNewCar(newCarVo);
        return "redirect:newCarList.do";
    }
}
