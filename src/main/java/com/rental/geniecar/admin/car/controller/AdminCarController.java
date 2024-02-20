package com.rental.geniecar.admin.car.controller;

import com.rental.geniecar.admin.car.service.AdminCarService;
import com.rental.geniecar.common.service.CommonService;
import com.rental.geniecar.domain.branch.BranchRentalCarVo;
import com.rental.geniecar.domain.car.NewCarVo;
import com.rental.geniecar.domain.car.RentalCarVo;
import com.rental.geniecar.domain.car.RequestNewCarVo;
import com.rental.geniecar.domain.common.CommonCodeVo;
import com.rental.geniecar.domain.common.FileVo;
import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.member.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

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
    public ResponseEntity selectCarNameList(NewCarVo newCarVo) {
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
    public String insertNewCars(RequestNewCarVo requestNewCarVo,
                                @RequestParam(value = "carImage", required = false) MultipartFile carImage,
                                HttpSession session) throws IOException {
        MemberVo member = (MemberVo) session.getAttribute("memberInfo");
        FileVo fileVo = new FileVo();
        if (carImage != null) {
            if (!carImage.isEmpty()) {
                // 파일 정보
                fileVo.setFileName(carImage.getOriginalFilename());
                fileVo.setFileSize((int) carImage.getSize());

                // 파일 저장 경로
                String savePath = "C:\\geniecar_images\\carImage";
                String saveName = (fileVo.getFileName() != "") ? UUID.randomUUID().toString() + "_" + carImage.getOriginalFilename() : null;
                String fullPath = savePath + File.separator + saveName;

                // 파일 저장 하기
                File dest = new File(fullPath);
                carImage.transferTo(dest);

                // 파일 정보 설정
                fileVo.setSavePath(savePath);
                fileVo.setSaveName(saveName);
                fileVo.setExtension(getFileExtension(carImage.getOriginalFilename()));
            }
        }
        adminCarService.insertNewCars(requestNewCarVo, fileVo);

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
        List<CommonCodeVo> companies = commonService.selectCommonCodes("COM");
        pagination.setTotalRecordCount(adminCarService.newCarTotalCount(pagination));
        List<NewCarVo> newCarList = adminCarService.selectNewCarList(pagination);
        model.addAttribute("companies", companies);
        model.addAttribute("newCarList", newCarList);
        model.addAttribute("pagination", pagination);
        return "admin/car/newCarList";
    }

    @PostMapping("/newCarModify.do")
    public String newCarModify(NewCarVo newCarVo) {
        adminCarService.updateNewCar(newCarVo);
        return "redirect:newCarList.do";
    }

    @ResponseBody
    @GetMapping("/newCarDelete.do")
    public ResponseEntity newCarDelete(@RequestParam("deleteNo") int no) {
        try {
            adminCarService.deleteNewCar(no);
            return ResponseEntity.ok("성공");
        } catch (Exception e) {
            return ResponseEntity.ok("실패");
        }
    }

    @GetMapping("/newCarDetail.do")
    public String newCarDetail(@RequestParam int no, Model model) {
        NewCarVo newCar = adminCarService.selectDetailCar(no);
        model.addAttribute("newCar", newCar);
        return "admin/car/newCarDetail";
    }

    // 파일 확장자 얻기
    private String getFileExtension(String fileName) {
        int dotIndex = fileName.lastIndexOf('.');
        if (dotIndex == -1 || dotIndex == fileName.length() - 1) {
            return "";
        }
        return fileName.substring(dotIndex + 1).toLowerCase();
    }


}
