package com.rental.geniecar.business.consult.controller;

import com.rental.geniecar.consult.service.ConsultService;
import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.customer.ConsultVo;
import com.rental.geniecar.domain.member.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @GetMapping("/consultDetail.do")
    public String consultDetail(@RequestParam("no") int no, Model model){
        ConsultVo consult = consultService.selectConsultDetail(no);
        model.addAttribute("consult", consult);
        return "business/consult/consultDetail";
    }

    @ResponseBody
    @GetMapping("/consultComplete.do")
    public ResponseEntity consultComplete(@RequestParam("no") int no){
        consultService.updateConsultStatus(no);
        return ResponseEntity.ok("성공");
    }

}