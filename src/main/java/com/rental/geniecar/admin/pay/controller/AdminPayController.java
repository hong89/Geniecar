package com.rental.geniecar.admin.pay.controller;

import com.rental.geniecar.admin.pay.service.AdminPayService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/pay/")
public class AdminPayController {

    private final AdminPayService adminPayService;

    @GetMapping("/payment.do")
    public String payment() {
        return "admin/pay/payment";
    }
}

