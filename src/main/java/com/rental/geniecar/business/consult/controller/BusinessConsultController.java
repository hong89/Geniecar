package com.rental.geniecar.business.consult.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.FileVo;

@Controller
@RequestMapping("/business/consult/")
public class BusinessConsultController {
	private static final String UPLOAD_PATH = "C:\\geniecar_images";

	private void setImageFilePath(List<FileVo> imageFiles, String savePath) {
	    for (FileVo imageFile : imageFiles) {
	        imageFile.setImageFilePath(savePath, imageFile.getSaveName());
	    }
	}

	@Autowired
	private AdminBoardService boardService;

    @GetMapping("/one.do")
    public String one(CommonCrudVo boardVo, Model model){
    	
    	// 페이징 전처리
        boardVo.setPageStartSet();
        // 목록조회
        List<CommonCrudVo> boardList = boardService.selectBoardList(boardVo);
        // 목록 전체건수 조회
        boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
        // 페이징 후처리
        boardVo.setPageEndSet();

        model.addAttribute("boardList", boardList);
        model.addAttribute("boardVo", boardVo);
    	
        return "business/consult/one";
    }
    @GetMapping("/review.do")
    public String review(CommonCrudVo boardVo, Model model){
    	
    	// 페이징 전처리
        boardVo.setPageStartSet();
        // 목록조회
        List<CommonCrudVo> boardList = boardService.selectBoardList(boardVo);
        // 목록 전체건수 조회
        boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
        // 페이징 후처리
        boardVo.setPageEndSet();

        model.addAttribute("boardList", boardList);
        model.addAttribute("boardVo", boardVo);
    	
        return "business/consult/review";
    }
    @GetMapping("/consult.do")
    public String consult(CommonCrudVo boardVo, Model model){
    	
    	// 페이징 전처리
        boardVo.setPageStartSet();
        // 목록조회
        List<CommonCrudVo> boardList = boardService.selectBoardList(boardVo);
        // 목록 전체건수 조회
        boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
        // 페이징 후처리
        boardVo.setPageEndSet();

        model.addAttribute("boardList", boardList);
        model.addAttribute("boardVo", boardVo);
    	
        return "business/consult/consult";
    }
    @GetMapping("/register.do")
    public String register(){
        return "business/consult/register";
    }
}