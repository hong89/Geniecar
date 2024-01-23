package com.rental.geniecar.admin.rental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/rental/")
public class AdminRentalController {

    @GetMapping("/shortRent.do")
    public String shortRent() {
        return "admin/rental/shortRent";
    }

    @GetMapping("/monthRent.do")
    public String monthRent() {
        return "admin/rental/monthRent";
    }

    @GetMapping("/commuteRent.do")
    public String commuteRent() {
        return "admin/rental/commuteRent";
    }
}