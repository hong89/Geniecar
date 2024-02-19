package com.rental.geniecar.business.consult.controller;

import com.rental.geniecar.consult.service.ConsultService;
import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.customer.ConsultVo;
import com.rental.geniecar.domain.member.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/business/consult")
@RequiredArgsConstructor
public class BusinessConsultController {

    private final ConsultService consultService;

    @GetMapping("/consultList.do")
    public String consultList(Pagination pagination, Model model, HttpSession session){
        MemberVo member = (MemberVo) session.getAttribute("memberInfo");
        pagination.setKeyword(member.getBranchCode());
        List<ConsultVo> consultList = consultService.selectConsultList(pagination);
        model.addAttribute("consultList", consultList);
        return "business/consult/consultList";
    }

}