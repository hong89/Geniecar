package com.rental.geniecar.admin.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rental.geniecar.admin.board.service.BoardService;
import com.rental.geniecar.common.domain.BoardVo;

@Controller
@RequestMapping("/admin/board/")
public class AdminBoardController {
	
	@Autowired
	private BoardService boardService;
		
	//LJJ
    @GetMapping("/list.do")
    public String listNotice(BoardVo boardVo, Model model) {
    	List<BoardVo> boardList = boardService.selectBoardList(boardVo);
    	System.out.println("########### ::2222222222");
    	model.addAttribute("boardList", boardList);
    	System.out.println("########### ::333333333");
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
