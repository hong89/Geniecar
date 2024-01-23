package com.rental.geniecar.admin.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/member/")
public class AdminMemberController {
    @GetMapping("/userList.do")
    public String userList() {
        return "admin/member/userList";
    }

    @GetMapping("/businessList.do")
    public String businessList() {
        return "admin/member/businessList";
    }

}
