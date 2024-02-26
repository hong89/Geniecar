package com.rental.geniecar.branch.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rental.geniecar.admin.car.service.AdminCarService;
import com.rental.geniecar.common.service.CommonService;
import com.rental.geniecar.domain.branch.BranchRentalCarVo;
import com.rental.geniecar.domain.common.CommonCodeVo;
import com.rental.geniecar.domain.common.Pagination;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/branch")
public class BranchController {
	
	private final CommonService commonService;
    private final AdminCarService adminCarService;
	
    public BranchController(CommonService commonService, AdminCarService adminCarService) {
        this.commonService = commonService;
        this.adminCarService = adminCarService;
    }

    @GetMapping("/allBranchArea.do")
    public String allBranchArea(Pagination pagination, Model model) {
    	List<CommonCodeVo> branches = commonService.selectCommonCodes("LOC");
        pagination.setTotalRecordCount(adminCarService.branchesTotalCount(pagination));
        List<BranchRentalCarVo> carList = adminCarService.selectBranchesCarList(pagination);

        model.addAttribute("branches", branches);
        model.addAttribute("pagination", pagination);
        model.addAttribute("carList", carList);
        return "branch/allBranchArea";
    }

    @GetMapping("/jejuAuto.do")
    public String jejuAuto() {
        return "branch/jejuAuto";
    }
}
