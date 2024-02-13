package com.rental.geniecar.branch.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/branch")
public class BranchController {

    @GetMapping("/allBranchArea.do")
    public String allBranchArea() {
        return "branch/allBranchArea";
    }

    @GetMapping("/jejuAuto.do")
    public String jejuAuto() {
        return "branch/jejuAuto";
    }
}
