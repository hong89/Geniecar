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
	
	// JJ
	// 이벤트 메인 페이지
	@GetMapping("/eventMain.do")
	public String eventMain(CommonCrudVo boardVo, Model model) {
	    // 타입코드로 이벤트에 해당하는 게시글 목록 가져오기
	    List<CommonCrudVo> boardList = boardService.selectBoardList(boardVo);

	    // 각 게시글에 해당하는 이미지 파일번호 가져오기
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

	    // 모델에 데이터 추가
	    model.addAttribute("boardList", boardList);
	    model.addAttribute("boardVo", boardVo);
	    
	    return "carlife/eventMain";
	}
	
	// JJ
	// 당첨자 페이지
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
	
	// JJ
	// 당첨자 상세보기
	@GetMapping("/winnerEventDetail.do")
	public String winnerEventDetail(@RequestParam int no, Model model) {
		BoardVo notice = boardService.selectNoticeDetail(no);
			
		List<FileVo> imageFiles = boardService.selectImageFiles(notice.getFileNo());
			
		setImageFilePath(imageFiles, UPLOAD_PATH);
			
		model.addAttribute("notice", notice);
		model.addAttribute("imageFiles", imageFiles);
		   
		return "carlife/winnerEventDetail";
	}
	
	// JJ
	// 이벤트 상세보기
	@GetMapping("/eventDetail.do")
	public String eventDetail(@RequestParam int no, Model model) {
		BoardVo notice = boardService.selectNoticeDetail(no);
		
		List<FileVo> imageFiles = boardService.selectImageFiles(notice.getFileNo());
		
		setImageFilePath(imageFiles, UPLOAD_PATH);
		
		model.addAttribute("notice", notice);
	    model.addAttribute("imageFiles", imageFiles);
	    
		return "carlife/eventDetail";
	}
	
	@GetMapping("/commuteRent.do")
	public String commuteRent() {
		return "carlife/commuteRent";
	}

}
