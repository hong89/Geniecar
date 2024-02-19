package com.rental.geniecar.reservation.controller;

import com.rental.geniecar.domain.common.CommonCodeVo;
import com.rental.geniecar.common.service.CommonService;
import com.rental.geniecar.domain.branch.RentalCarBranchVo;
import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.domain.reservation.*;
import com.rental.geniecar.reservation.service.ReservationService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.*;
import java.util.stream.Collectors;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/reservation")
public class ReservationController {

    private final ReservationService reservationService;
    private final CommonService commonService;

    // HSH
	@GetMapping("/index.do")
	public String index(Model model, @RequestParam(defaultValue = "1") String regionType){

        List<CommonCodeVo> locationList = commonService.selectCommonCodes("LOC");
        if("1".equals(regionType)){
            locationList = locationList.stream()
                    .filter(location -> !"JJD".equals(location.getCode())).collect(Collectors.toList());
        }else{
            locationList = locationList.stream()
                    .filter(location -> "JJD".equals(location.getCode())).collect(Collectors.toList());
        }

        List<CommonCodeVo> carTypeList = commonService.selectCommonCodes("SEG");
        List<CommonCodeVo> fuelTypeList = commonService.selectCommonCodes("FUE");
        model.addAttribute("locationList", locationList);
        model.addAttribute("carTypeList", carTypeList);
        model.addAttribute("fuelTypeList", fuelTypeList);
        model.addAttribute("regionType", regionType);
        return "reservation/index";
    }

    // HSH
    @GetMapping("/selectBranch.do")
    @ResponseBody
    public ResponseEntity selectBranch(String locationCode){
        List<RentalCarBranchVo> branches = reservationService.selectBranchesByLocationCode(locationCode);
        return ResponseEntity.ok(branches);
    }

    // HSH
    @GetMapping("/searchCar.do")
    @ResponseBody
    public ResponseEntity selectSearchCar(SearchReservationRentalCarVo searchReservationRentalCarVo){
        List<ReservationRentalCarVo> reservationSearchCars = null;
        try {
            reservationSearchCars = reservationService.selectRentalCarReservationSearchCar(searchReservationRentalCarVo);
        } catch (ParseException e) {
            log.error(e.getMessage());
            return ResponseEntity.badRequest().body(null);
        }
        return ResponseEntity.ok(reservationSearchCars);
    }

    // HSH
    @PostMapping("/step2.do")
    public String step2(RentalCarReservationStep2Vo rentalCarReservationStep2Vo, Model model, HttpSession session){
        try {
            MemberVo member = (MemberVo) session.getAttribute("memberInfo");
            rentalCarReservationStep2Vo.setReservationMemberName(member.getName());
            rentalCarReservationStep2Vo.setReservationMemberHp(member.getHp());
            rentalCarReservationStep2Vo = reservationService.reservationStep2(rentalCarReservationStep2Vo);
            model.addAttribute("detail", rentalCarReservationStep2Vo);
        }catch (ParseException e) {
            log.error(e.getMessage());
        }
        return "reservation/step2";
    }

    @PostMapping("/reservationSuccess.do")
    @ResponseBody
    public ResponseEntity reservationSuccess(ReservationSaveVo reservationSaveVo, HttpSession session){
        MemberVo member = (MemberVo) session.getAttribute("memberInfo");
        reservationSaveVo.setRegId(member.getId());
        RentalCarReservationVo rentalCarReservationVo = reservationService.saveRentalCarReservationSuccess(reservationSaveVo);
        return ResponseEntity.ok().body(rentalCarReservationVo);
    }
}
