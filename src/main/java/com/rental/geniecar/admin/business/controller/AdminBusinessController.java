package com.rental.geniecar.admin.business.controller;

import java.util.List;

import com.rental.geniecar.consult.service.ConsultService;
import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.customer.ConsultVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.FileVo;
import org.springframework.web.bind.annotation.RequestParam;

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
    
    // JJ
    // -------------------------------------------------------댓글확인 
    @GetMapping("/qnaList.do")
    public String qnaList(CommonCrudVo boardVo, Model model) {

        // 페이징 전처리
        boardVo.setPageStartSet();
        // 목록조회 ----------------------------------selectboardList
        List<CommonCrudVo> boardList = boardService.selectQnaList(boardVo);
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
    
    // JJ
    // 게시판 상세 보기 (여기 부분 확인 필요 fileNo)
    @GetMapping("/adminQnaDetail.do")
    public String adminQnaDetail(@RequestParam int no, Model model) {
        BoardVo notice = boardService.selectNoticeDetail(no);

        // 이미지 파일 정보 가져오기
        List<FileVo> imageFiles = boardService.selectImageFiles(notice.getFileNo());
        
        System.out.println(imageFiles.toString());
        // 이미지 경로
        setImageFilePath(imageFiles, UPLOAD_PATH);

        model.addAttribute("notice", notice);
        model.addAttribute("imageFiles", imageFiles);

        return "admin/business/adminQnaDetail";
    }
    
    // 게시판 글 쓰기 폼
    @GetMapping("/adminQnaRegister.do")
    public String adminQnaRegister() {
        return "admin/business/adminQnaRegister";
    }




    // hsh
    @GetMapping("/consultList.do")
    public String consultList(Pagination pagination, Model model) {
        List<ConsultVo> consultList = consultService.selectAdminConsultList(pagination);
        model.addAttribute("consultList", consultList);
        return "admin/business/consultList";
    }

    @GetMapping("/consultDetail.do")
    public String consultDetail(@RequestParam("no") int no, Model model){
        ConsultVo consult = consultService.selectConsultDetail(no);
        model.addAttribute("consult", consult);
        return "admin/business/consultDetail";
    }
}
