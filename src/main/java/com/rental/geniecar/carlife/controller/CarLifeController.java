package com.rental.geniecar.carlife.controller;

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
@RequestMapping("/carlife")
public class CarLifeController {
	private static final String UPLOAD_PATH = "C:\\geniecar_images";
	
	private void setImageFilePath(List<FileVo> imageFiles, String savePath) {
        for (FileVo imageFile : imageFiles) {
            imageFile.setImageFilePath(savePath, imageFile.getSaveName());
        }
    }
	
	@Autowired
    private AdminBoardService boardService;
	
	@GetMapping("/jejuAuto.do")
	public String jejuAuto() {
		return "carlife/jejuAuto";
	}
	
	@GetMapping("/eventMain.do")
	public String eventMain(CommonCrudVo boardVo, Model model) {
		
		boardVo.setPageStartSet();
        List<CommonCrudVo> boardList = boardService.selectBoardList(boardVo);
        boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
        boardVo.setPageEndSet();

        model.addAttribute("boardList", boardList);
        model.addAttribute("boardVo", boardVo);
		
		return "carlife/eventMain";
	}
	
	@GetMapping("/winnerEventMain.do")
	public String winnerEventMain(CommonCrudVo boardVo, Model model) {
		
		boardVo.setPageStartSet();
        List<CommonCrudVo> boardList = boardService.selectBoardList(boardVo);
        boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
        boardVo.setPageEndSet();

        model.addAttribute("boardList", boardList);
        model.addAttribute("boardVo", boardVo);
		
		return "carlife/winnerEventMain";
	}
	
	@GetMapping("/eventDetail.do")
	public String eventDetail() {
		return "carlife/eventDetail";
	}
	
	@GetMapping("/commuteRent.do")
	public String commuteRent() {
		return "carlife/commuteRent";
	}

}
