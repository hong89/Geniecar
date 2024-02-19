package com.rental.geniecar.admin.business.controller;

import java.util.List;

import com.rental.geniecar.consult.service.ConsultService;
import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.customer.ConsultVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.FileVo;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/business/")
public class AdminBusinessController {

    private final ConsultService consultService;
    private final AdminBoardService boardService;
	private static final String UPLOAD_PATH = "C:\\geniecar_images";

	private void setImageFilePath(List<FileVo> imageFiles, String savePath) {
	    for (FileVo imageFile : imageFiles) {
	        imageFile.setImageFilePath(savePath, imageFile.getSaveName());
	    }
	}


	
    // JJ
    // 관리자 이용후기 목록
    @GetMapping("/reviewList.do")
    public String reviewList(CommonCrudVo boardVo, Model model) {
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
    	
        return "admin/business/reviewList";
        
    }

    @GetMapping("/qnaList.do")
    public String qnaList(CommonCrudVo boardVo, Model model) {
    	
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
    	
        return "admin/business/qnaList";
    }

    @GetMapping("/paymentList.do")
    public String paymentList() {
        return "admin/business/paymentList";
    }




    // hsh
    @GetMapping("/consultList.do")
    public String consultList(Pagination pagination, Model model) {
        List<ConsultVo> consultList = consultService.selectAdminConsultList(pagination);
        model.addAttribute("consultList", consultList);
        return "admin/business/consultList";
    }
}
