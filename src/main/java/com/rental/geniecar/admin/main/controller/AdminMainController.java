package com.rental.geniecar.admin.main.controller;

import java.util.List;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.FileVo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/main")
public class AdminMainController {

	private final AdminBoardService boardService;
	
	
	// JJ
	// 관리자 메인 글 목록
	/*@GetMapping("/index.do")
	public String index(Model model) {
		
		CommonCrudVo boardVo1 = new CommonCrudVo();
	    boardVo1.setTypeCode("CONSULTING");
	    List<CommonCrudVo> boardList1 = boardService.selectBoardList(boardVo1);
	    model.addAttribute("boardList1", boardList1);
	    model.addAttribute("boardVo1", boardVo1);
	    
	    CommonCrudVo boardVo2 = new CommonCrudVo();
	    boardVo2.setTypeCode("QNA");
	    List<CommonCrudVo> boardList2 = boardService.selectBoardList(boardVo2);
	    model.addAttribute("boardList2", boardList2);
	    model.addAttribute("boardVo2", boardVo2);
		
		return "admin/main/index";
	}*/

	// hsh
	// 메인페이지
	@GetMapping("/index.do")
	public String index(Model model) {

		return "admin/main/index";
	}
}
