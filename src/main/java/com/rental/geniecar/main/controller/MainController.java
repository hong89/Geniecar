package com.rental.geniecar.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.FileVo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/main")
public class MainController {

	@Autowired
	private AdminBoardService boardService;
	
	// JJ
	// 메인 글 목록
	@GetMapping("/index.do")
	public String index(Model model) {
		
		CommonCrudVo boardVo = new CommonCrudVo();
	    boardVo.setTypeCode("NOTICE");
	    List<CommonCrudVo> boardList = boardService.selectBoardList(boardVo);
	    model.addAttribute("boardList", boardList);
	    model.addAttribute("boardVo", boardVo);
		
		return "main/index";
	}
	
	@GetMapping("/indexTest.do")
	public String indexTest() {
		return "main/indexTest";
	}
	
}
