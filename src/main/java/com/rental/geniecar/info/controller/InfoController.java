package com.rental.geniecar.info.controller;

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
@RequestMapping("/info")
public class InfoController {
	private static final String UPLOAD_PATH = "C:\\geniecar_images";
	
	private void setImageFilePath(List<FileVo> imageFiles, String savePath) {
        for (FileVo imageFile : imageFiles) {
            imageFile.setImageFilePath(savePath, imageFile.getSaveName());
        }
    }
	
	@Autowired
    private AdminBoardService boardService;
	
	@GetMapping("/allBranchArea.do")
	public String allBranchArea() {
		return "info/allBranchArea";
	}
	
	@GetMapping("/noticeDetail.do")
	public String noticeDetail(@RequestParam int no, Model model) {
		BoardVo notice = boardService.selectNoticeDetail(no);
		
	    List<FileVo> imageFiles = boardService.selectImageFiles(notice.getFileNo());
 
	    setImageFilePath(imageFiles, UPLOAD_PATH);

	    model.addAttribute("notice", notice);
	    model.addAttribute("imageFiles", imageFiles);
		
		return "info/noticeDetail";
	}
	
	@GetMapping("/noticeNewsMain.do")
    public String noticeNewsMain(CommonCrudVo boardVo, Model model) {

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
        return "info/noticeNewsMain";
    }

}
