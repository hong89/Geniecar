package com.rental.geniecar.admin.rental.controller;

import com.rental.geniecar.admin.rental.service.AdminRentalService;
import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.reservation.RentalCarReservationVo;
import com.rental.geniecar.domain.reservation.ReservationDetailVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@RequiredArgsConstructor
@Controller
@RequestMapping("/admin/rental/")
public class AdminRentalController {

    private final AdminRentalService adminRentalService;

    @GetMapping("/rentReservation.do")
    public String rentReservation(Pagination pagination, Model model) {
        pagination.setTotalRecordCount(adminRentalService.totalCount(pagination));
        List<RentalCarReservationVo> reservationList = adminRentalService.selectReservationList(pagination);
        model.addAttribute("reservationList", reservationList);
        model.addAttribute("pagination", pagination);
        return "admin/rental/rentReservation";
    }

    @GetMapping("/rentComplete.do")
    public String rentComplete(Pagination pagination, Model model) {
        pagination.setTotalRecordCount(adminRentalService.completeTotalCount(pagination));
        List<RentalCarReservationVo> completeList = adminRentalService.selectCompleteList(pagination);
        model.addAttribute("completeList", completeList);
        model.addAttribute("pagination", pagination);
        return "admin/rental/rentComplete";
    }


    @GetMapping("/rentProgress.do")
    public String rentProgress(Pagination pagination, Model model) {
        pagination.setTotalRecordCount(adminRentalService.progressTotalCount(pagination));
        List<RentalCarReservationVo> progressList = adminRentalService.selectProgressList(pagination);
        model.addAttribute("progressList", progressList);
        model.addAttribute("pagination", pagination);
        return "admin/rental/rentProgress";
    }

    @GetMapping("/rentCancel.do")
    public String rentCancel(Pagination pagination, Model model) {
        pagination.setTotalRecordCount(adminRentalService.cancelTotalCount(pagination));
        List<RentalCarReservationVo> cancelList = adminRentalService.selectCancelList(pagination);
        model.addAttribute("cancelList", cancelList);
        model.addAttribute("pagination", pagination);
        return "admin/rental/rentCancel";
    }

    @GetMapping("/rentDetail.do")
    public String rentDetail(@RequestParam("reservationNo") String reservationNo, Model model){
        ReservationDetailVo reservation = adminRentalService.selectDetail(reservationNo);
        model.addAttribute("reservation", reservation);
        return "admin/rental/rentDetail";
    }
}

