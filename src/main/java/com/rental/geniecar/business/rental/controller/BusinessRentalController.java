package com.rental.geniecar.business.rental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/business/rental/")
public class BusinessRentalController {

    @GetMapping("/shortRent.do")
    public String shortRent() {
        return "business/rental/shortRent";
    }

    @GetMapping("/monthRent.do")
    public String monthRent() {
        return "business/rental/monthRent";
    }

    @GetMapping("/commuteRent.do")
    public String commuteRent() {
        return "business/rental/commuteRent";
    }
}