package com.rental.geniecar.business.pay.controller;

import com.rental.geniecar.business.pay.service.BusinessPayService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/business/pay/")
public class BusinessPayController {

    private final BusinessPayService businessPayService;

    @GetMapping("/payment.do")
    public String payment() {
        return "business/pay/payment";
    }
}

