package com.rental.geniecar.business.rental.controller;

import com.rental.geniecar.business.rental.service.BusinessRentalService;
import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.domain.reservation.RentalCarReservationVo;
import com.rental.geniecar.domain.reservation.ReservationDetailVo;
import com.rental.geniecar.domain.reservation.ReservationVo;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@RequiredArgsConstructor
@Controller
@RequestMapping("/business/rental/")
public class BusinessRentalController {

    private final BusinessRentalService businessRentalService;

    @GetMapping("/rentReservation.do")
    public String rentReservation(Pagination pagination, Model model, HttpSession session) {
        MemberVo member = (MemberVo)session.getAttribute("memberInfo");
        pagination.setKeyword(member.getBranchCode());
        pagination.setTotalRecordCount(businessRentalService.totalCount(pagination));
        List<RentalCarReservationVo> reservationList = businessRentalService.selectReservationList(pagination);
        model.addAttribute("reservationList", reservationList);
        model.addAttribute("pagination", pagination);
        return "business/rental/rentReservation";
    }

    @GetMapping("/rentComplete.do")
    public String rentComplete(Pagination pagination, Model model, HttpSession session) {
        MemberVo member = (MemberVo)session.getAttribute("memberInfo");
        pagination.setKeyword(member.getBranchCode());
        pagination.setTotalRecordCount(businessRentalService.completeTotalCount(pagination));
        List<RentalCarReservationVo> completeList = businessRentalService.selectCompleteList(pagination);
        model.addAttribute("completeList", completeList);
        model.addAttribute("pagination", pagination);
        return "business/rental/rentComplete";
    }

    @GetMapping("/rentProgress.do")
    public String rentProgress(Pagination pagination, Model model, HttpSession session) {
        MemberVo member = (MemberVo)session.getAttribute("memberInfo");
        pagination.setKeyword(member.getBranchCode());
        pagination.setTotalRecordCount(businessRentalService.progressTotalCount(pagination));
        List<RentalCarReservationVo> progressList = businessRentalService.selectProgressList(pagination);
        model.addAttribute("progressList", progressList);
        model.addAttribute("pagination", pagination);
        return "business/rental/rentProgress";
    }

    @GetMapping("/rentCancel.do")
    public String rentCancel(Pagination pagination, Model model, HttpSession session) {
        MemberVo member = (MemberVo)session.getAttribute("memberInfo");
        pagination.setKeyword(member.getBranchCode());
        pagination.setTotalRecordCount(businessRentalService.cancelTotalCount(pagination));
        List<RentalCarReservationVo> cancelList = businessRentalService.selectCancelList(pagination);
        model.addAttribute("cancelList", cancelList);
        model.addAttribute("pagination", pagination);
        return "business/rental/rentCancel";
    }

    @GetMapping("/rentDetail.do")
    public String rentDetail(@RequestParam("reservationNo") String reservationNo,
                             @RequestParam(value = "checkBtn", required = false) String checkBtn,
                             Model model, HttpSession session){
        MemberVo member = (MemberVo)session.getAttribute("memberInfo");
        ReservationDetailVo reservation = businessRentalService.selectDetail(reservationNo, member.getBranchCode());
        model.addAttribute("reservation", reservation);
        model.addAttribute("checkBtn", checkBtn);
        return "business/rental/rentDetail";
    }

    @ResponseBody
    @GetMapping("/cancel.do")
    public ResponseEntity cancel(String reservationNo, HttpSession session) {
        MemberVo member = (MemberVo)session.getAttribute("memberInfo");
        businessRentalService.updateReservation(reservationNo, member.getId());
        return ResponseEntity.ok("성공");
    }

}