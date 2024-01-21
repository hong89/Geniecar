package com.rental.geniecar.business.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/business/payment/")
public class BusinessPaymentController {
    @GetMapping("/shortRent.do")
    public String shortRent() {
        return "business/payment/shortRent";
    }

    @GetMapping("/monthRent.do")
    public String monthRent() {
        return "business/payment/monthRent";
    }

    @GetMapping("/commuteRent.do")
    public String commuteRent() {
        return "business/payment/commuteRent";
    }
}