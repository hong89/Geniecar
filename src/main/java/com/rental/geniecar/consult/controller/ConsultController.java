package com.rental.geniecar.consult.controller;

import com.rental.geniecar.consult.service.ConsultService;
import com.rental.geniecar.domain.customer.ConsultVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/consult")
@RequiredArgsConstructor
public class ConsultController {

    private final ConsultService consultService;

    @PostMapping("/insertConsult.do")
    public String insertConsult(ConsultVo consultVo){
        try {
            consultService.insertConsult(consultVo);
            return "customer/complete";
        } catch (Exception e) {
            return "customer/consult";
        }

    }
}
