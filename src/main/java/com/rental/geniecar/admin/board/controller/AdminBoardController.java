package com.rental.geniecar.admin.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.common.domain.BoardVo;

@Controller
@RequestMapping("/admin/board/")
public class AdminBoardController {
	
	@Autowired
	private AdminBoardService boardService;
		
	// JJ
	// 게시판 목록 보기
    @GetMapping("/list.do")
    public String listNotice(BoardVo boardVo, Model model) {
    	
    	// 페이징 전처리
    	boardVo.setPageStartSet();
    	// 목록조회
    	List<BoardVo> boardList = boardService.selectBoardList(boardVo);
    	// 목록 전체건수 조회
    	boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
    	// 페이징 후처리
    	boardVo.setPageEndSet();
    	
    	model.addAttribute("boardList", boardList);
    	model.addAttribute("boardVo", boardVo);
    	return "admin/board/list";
    }
    
    // JJ
    // 게시판 상세 보기
    @GetMapping("/detailNotice.do")
    public String detailNotice(@RequestParam int no, Model model) {
    	BoardVo notice = boardService.selectNoticeDetail(no);
    	model.addAttribute("notice", notice);
    	return "admin/board/detailNotice";
    }
    
    // 게시판 글 쓰기 폼
    @GetMapping("/register.do")
    public String register() {
        return "admin/board/register";
    }
    
    // JJ
    // 게시판 FAQ 목록 보기
    @GetMapping("/faqList.do")
    public String faqList(BoardVo boardVo, Model model) {
    	// 페이징 전처리
    	boardVo.setPageStartSet();
    	// 목록조회
    	List<BoardVo> boardList = boardService.selectBoardList(boardVo);
    	// 목록 전체건수 조회
    	boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
    	// 페이징 후처리
    	boardVo.setPageEndSet();
    	
    	model.addAttribute("boardList", boardList);
    	model.addAttribute("boardVo", boardVo);
        return "admin/board/faqList";
    }
    
    // JJ
    // 게시판 새 글 쓰기
    @PostMapping("/insertBoard.do")
    public String insertBoard(BoardVo boardVo) {
    	boardService.insertBoard(boardVo);
    	return "redirect:/admin/board/list.do?typeCode=NOTICE";
    }
    
    // JJ
    // 공지사항 글 폼 불러오기
    @GetMapping("/updateNoticeForm.do")
    public String updateNoticeForm(@RequestParam int no, Model model) {
    	BoardVo notice = boardService.selectNoticeDetail(no);
    	model.addAttribute("notice", notice);
    	return "admin/board/updateNoticeForm";
    }
    
    // JJ
    // 게시판 수정 적용
    @PostMapping("/updateNotice.do")
    public String updateNotice(BoardVo boardVo, Model model) {
    	boardService.updateNotice(boardVo);
    	BoardVo notice = boardService.selectNoticeDetail(boardVo.getNo());
    	model.addAttribute("notice", notice);
    	return "admin/board/updateNoticeForm";
	}
    
    // JJ
    // 게시판 내용 삭제하기
    @GetMapping("/deleteNotice.do")
    public String deleteNotice(int no) {
    	boardService.deleteNotice(no);
    	return "redirect:/admin/board/list.do?typeCode=NOTICE";
    } 	
    
}
