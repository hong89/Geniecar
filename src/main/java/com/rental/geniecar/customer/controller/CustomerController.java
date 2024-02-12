package com.rental.geniecar.customer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.FileVo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/customer")
public class CustomerController {
	private static final String UPLOAD_PATH = "C:\\geniecar_images";
	
	private void setImageFilePath(List<FileVo> imageFiles, String savePath) {
        for (FileVo imageFile : imageFiles) {
            imageFile.setImageFilePath(savePath, imageFile.getSaveName());
        }
    }
	
	@Autowired
    private AdminBoardService boardService;
	
	@GetMapping("/faq.do")
	public String faq(CommonCrudVo boardVo, Model model) {
		
        boardVo.setPageStartSet();
        List<CommonCrudVo> boardList = boardService.selectBoardList(boardVo);
        boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
        boardVo.setPageEndSet();

        model.addAttribute("boardList", boardList);
        model.addAttribute("boardVo", boardVo);
		
		return "customer/faq";
	}
	
	@GetMapping("/question.do")
	public String question(CommonCrudVo boardVo, Model model) {
		
		 boardVo.setPageStartSet();
	        List<CommonCrudVo> boardList = boardService.selectBoardList(boardVo);
	        boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
	        boardVo.setPageEndSet();

	        model.addAttribute("boardList", boardList);
	        model.addAttribute("boardVo", boardVo);
	        
		return "customer/question";
	}
	
	@GetMapping("/questionDetail.do")
	public String questionDetail() {
		return "customer/questionDetail";
	}
	// JJ
	// 후기 메인
	@GetMapping("/reviewMain.do")
	public String reviewMain(CommonCrudVo boardVo, Model model) {
		List<CommonCrudVo> boardList = boardService.selectBoardList(boardVo);
		
		for (CommonCrudVo notice : boardList) {
	        if (notice instanceof BoardVo) {
	            int no = ((BoardVo) notice).getNo();
	            List<FileVo> imageFiles = boardService.selectImageFilesByNo(no);
	            ((BoardVo) notice).setImageFiles(imageFiles);
	        }
	    }
		
        boardVo.setPageStartSet();
        boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
        boardVo.setPageEndSet();

        model.addAttribute("boardList", boardList);
        model.addAttribute("boardVo", boardVo);
		
		return "customer/reviewMain";
	}
	
	// JJ
	// 이벤트 상세보기
	@GetMapping("/reviewDetail.do")
	public String reviewDetail(@RequestParam int no, Model model) {
		BoardVo notice = boardService.selectNoticeDetail(no);
		
		List<FileVo> imageFiles = boardService.selectImageFiles(notice.getFileNo());
		
		setImageFilePath(imageFiles, UPLOAD_PATH);
		
		model.addAttribute("notice", notice);
		model.addAttribute("imageFiles", imageFiles);
		   
		return "customer/reviewDetail";
	}
	
	// JJ
	// 후기 작성 폼
	@GetMapping("/reviewRegister.do")
    public String reviewRegister() {
        return "customer/reviewRegister";
    }
}
