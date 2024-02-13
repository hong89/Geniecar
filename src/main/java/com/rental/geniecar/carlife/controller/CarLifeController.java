package com.rental.geniecar.carlife.controller;

import java.util.List;
import java.util.stream.Collectors;

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
	

	@GetMapping("/commuteRent.do")
	public String commuteRent() {
		return "carlife/commuteRent";
	}

}
