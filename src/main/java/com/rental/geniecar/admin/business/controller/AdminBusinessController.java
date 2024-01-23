package com.rental.geniecar.admin.business.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/business/")
public class AdminBusinessController {
    @GetMapping("/eventList.do")
    public String eventList() {
        return "admin/business/eventList";
    }

    @GetMapping("/reviewList.do")
    public String reviewList() {
        return "admin/business/reviewList";
    }

    @GetMapping("/qnaList.do")
    public String qnaList() {
        return "admin/business/qnaList";
    }

    @GetMapping("/paymentList.do")
    public String paymentList() {
        return "admin/business/paymentList";
    }
}
