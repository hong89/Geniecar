package com.rental.geniecar.admin.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/board/")
public class AdminBoardController {
    @GetMapping("/list.do")
    public String list() {
        return "admin/board/list";
    }

    @GetMapping("/register.do")
    public String register() {
        return "admin/board/register";
    }

    @GetMapping("/faqList.do")
    public String faqList() {
        return "admin/board/faqList";
    }
}
