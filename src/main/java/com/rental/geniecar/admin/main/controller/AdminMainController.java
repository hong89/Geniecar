package com.rental.geniecar.admin.main.controller;

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
@RequestMapping("/admin/main")
public class AdminMainController {
	private static final String UPLOAD_PATH = "C:\\geniecar_images";

	private void setImageFilePath(List<FileVo> imageFiles, String savePath) {
	    for (FileVo imageFile : imageFiles) {
	        imageFile.setImageFilePath(savePath, imageFile.getSaveName());
	        System.err.println("######## :: 이미지 경로확인 " + imageFile.getImageFilePath());
	    }
	}

	@Autowired
	private AdminBoardService boardService;
	
	
	// JJ
	// 관리자 메인 글 목록
	@GetMapping("/index.do")
	public String index(CommonCrudVo boardVo, Model model) {
		
		boardVo.setPageStartSet();
        List<CommonCrudVo> boardList = boardService.selectBoardList(boardVo);
        boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
        boardVo.setPageEndSet();

        model.addAttribute("boardList", boardList);
        model.addAttribute("boardVo", boardVo);
		
		return "admin/main/index";
	}

}
