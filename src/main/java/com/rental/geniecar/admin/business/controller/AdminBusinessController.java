package com.rental.geniecar.admin.business.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.consult.service.ConsultService;
import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.FileVo;
import com.rental.geniecar.domain.common.Pagination;
import com.rental.geniecar.domain.customer.ConsultVo;

import lombok.RequiredArgsConstructor;

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
    // 게시판 상세 보기
    @GetMapping("/adminQnaDetail.do")
    public String adminQnaDetail(@RequestParam int no, HttpSession session, Model model) {
        BoardVo notice = boardService.selectNoticeDetail(no);
        
        // 야는 F5 연타 날리면 조회수 신나게 올라감
        boardService.increaseHit(no);
        
        // 세션에 글번호 저장했다가 중복으로 글 조회수 올라가는거 막음
        /*
        if (session.getAttribute("hitCnt") == null) {
            Set<Integer> hitCnt = new HashSet<>();
            hitCnt.add(no);
            session.setAttribute("hitCnt", hitCnt);

            boardService.increaseHit(no);
        } else {
            @SuppressWarnings("unchecked")
            Set<Integer> hitCnt = (Set<Integer>) session.getAttribute("hitCnt");
            if (!hitCnt.contains(no)) {
            	hitCnt.add(no);
                session.setAttribute("hitCnt", hitCnt);

                boardService.increaseHit(no);
            }
        }
		*/
        // 이미지 파일 정보 가져오기
        List<FileVo> imageFiles = boardService.selectImageFiles(notice.getFileNo());
        
        System.out.println(imageFiles.toString());
        // 이미지 경로
        setImageFilePath(imageFiles, UPLOAD_PATH);

        model.addAttribute("notice", notice);
        model.addAttribute("imageFiles", imageFiles);

        return "admin/business/adminQnaDetail";
    }
    
    // JJ
    // 게시판 상세 보기
    @GetMapping("/reviewDetail.do")
    public String reviewDetail(@RequestParam int no, HttpSession session, Model model) {
        BoardVo notice = boardService.selectNoticeDetail(no);
        
        // 야는 F5 연타 날리면 조회수 신나게 올라감
        boardService.increaseHit(no);
        
        // 세션에 글번호 저장했다가 중복으로 글 조회수 올라가는거 막음
        /*
        if (session.getAttribute("hitCnt") == null) {
            Set<Integer> hitCnt = new HashSet<>();
            hitCnt.add(no);
            session.setAttribute("hitCnt", hitCnt);

            boardService.increaseHit(no);
        } else {
            @SuppressWarnings("unchecked")
            Set<Integer> hitCnt = (Set<Integer>) session.getAttribute("hitCnt");
            if (!hitCnt.contains(no)) {
            	hitCnt.add(no);
                session.setAttribute("hitCnt", hitCnt);

                boardService.increaseHit(no);
            }
        }
		*/
        // 이미지 파일 정보 가져오기
        List<FileVo> imageFiles = boardService.selectImageFiles(notice.getFileNo());
        
        System.out.println(imageFiles.toString());
        // 이미지 경로
        setImageFilePath(imageFiles, UPLOAD_PATH);

        model.addAttribute("notice", notice);
        model.addAttribute("imageFiles", imageFiles);

        return "admin/business/reviewDetail";
    }
    
    // 게시판 글 쓰기 폼
    @GetMapping("/adminQnaRegister.do")
    public String adminQnaRegister() {
        return "admin/business/adminQnaRegister";
    }
    
    // JJ
    // 공지사항 글 폼 불러오기
    @GetMapping("/businessUpdateNoticeForm.do")
    public String businessUpdateNoticeForm(@RequestParam int no, Model model) {
        BoardVo notice = boardService.selectNoticeDetail(no);
        model.addAttribute("notice", notice);
        
        List<FileVo> imageFiles = boardService.selectImageFiles(notice.getFileNo());
        model.addAttribute("imageFiles", imageFiles);
        
        return "admin/business/businessUpdateNoticeForm";
    }
    
    // JJ
    // 이미지 수정
    @PostMapping("/updateImage.do")
    // editImageFile 여기 값 다있나 확인 // 있으면 업데이트 해서 xml까지 잘 가는지 확인 
    public ResponseEntity<String> updateImage(@RequestParam int fileNo, @RequestParam("editImageFile") MultipartFile editImageFile) {
        try {
        	System.err.println("#########fileNo: " + fileNo);
            System.err.println("#########editImageFile: " + editImageFile.getOriginalFilename());
        	
        	FileVo fileVo = new FileVo();
        	fileVo.setFileNo(fileNo);
        	fileVo.setEditImageFile(editImageFile);
        	
            boardService.updateImageFile(fileVo, editImageFile);
            
            return new ResponseEntity<>("이미지 수정이 성공했습니다.", HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>("이미지 수정 중 오류가 발생했습니다.", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // JJ
    // 게시판 수정 적용
    @PostMapping("/updateNotice.do")
    public String updateNotice(HttpServletRequest request, HttpSession session, BoardVo boardVo, @RequestParam("file") MultipartFile[] files, ServletResponse response, Model model) throws IOException {
        
        // 기존 게시물 정보 가져오기
        BoardVo originalNotice = boardService.selectNoticeDetail(boardVo.getNo());
        
        System.err.println("##### fileNum " + files.length);
        
        // 이미지 업데이트
        /*
        for (MultipartFile file : files) {
            if (!file.isEmpty()) {
                // 이미지 파일 업로드 및 정보 업데이트
                String saveName = saveImage(file);
                FileVo fileVo = new FileVo();
                fileVo.setSaveName(saveName);
                fileVo.setFileNo(originalNotice.getFileNo());
                boardService.updateImageFile(fileVo); 
            }
        }
        */
        List<FileVo> fileList = new ArrayList<>();
        try {
            if (files != null && files.length > 0) {
                for (MultipartFile file : files) {
                    if (!file.isEmpty()) {
                    	System.err.println("####### fileName " + file.getOriginalFilename());
                    	
                    	
                        FileVo fileVo = new FileVo();
                        // 파일 정보 설정
                        String savePath = "C:\\geniecar_images";
                        fileVo.setFileName(file.getOriginalFilename());
                        fileVo.setFileSize((int) file.getSize());
                        fileVo.setExtension(getFileExtension(file.getOriginalFilename()));
                        // 파일 저장 경로 및 이름 설정
                        String saveName = (fileVo.getFileName() != "") ? UUID.randomUUID().toString() + "_" + file.getOriginalFilename() : null;
                        String fullPath = savePath + File.separator + saveName;
                        
                        // 파일 저장
                        File dest = new File(fullPath);
                        file.transferTo(dest);
                        
                        // 파일 정보 설정
                        fileVo.setSavePath(savePath);
                        fileVo.setSaveName(saveName);
                        fileVo.setExtension(getFileExtension(file.getOriginalFilename()));
                        fileVo.setRegId(originalNotice.getRegId());
                        fileVo.setRegDate(originalNotice.getRegDate());
                        fileList.add(fileVo);
                    }
                }
            }
            /*    
            if (!fileList.isEmpty()) {
            	boardVo.setRegId(originalNotice.getRegId());
            	boardVo.setRegDate(originalNotice.getRegDate());
              	boardService.insertBoard(boardVo, fileList);
            }
            */
        } catch (IOException e) {
        	e.printStackTrace();
        }
        
        boardVo.setRegId(originalNotice.getRegId());
        boardVo.setRegDate(originalNotice.getRegDate());

        // 게시물 정보 업데이트
        boardService.updateNotice(boardVo, fileList);
        
        // 수정된 게시물 정보 조회
        BoardVo updatedNotice = boardService.selectNoticeDetail(boardVo.getNo());
        model.addAttribute("notice", updatedNotice);
        
        // 수정된 이미지 파일 목록 조회
        List<FileVo> updatedImageFiles = boardService.selectImageFiles(originalNotice.getFileNo());
        model.addAttribute("imageFiles", updatedImageFiles);
		
		String typeCode = boardVo.getTypeCode();
		if (typeCode.equals("REVIEW")) {
		    return "redirect:/admin/business/reviewList.do?typeCode=" + typeCode;
		} else if (typeCode.equals("QNA")) {
		    return "redirect:/admin/business/qnaList.do?typeCode=" + typeCode;
		}

		// 만약 어떤 조건에도 해당하지 않는다면 기본적으로 여기로 리다이렉트
		return "redirect:/admin/business/qnaList.do?typeCode=" + typeCode;

        
        //return "redirect:/admin/business/list.do?typeCode=" + boardVo.getTypeCode();
        //return "redirect:/admin/board/detailNotice.do?no=" + boardVo.getNo();
        //return "admin/board/updateNoticeForm";
    }
    
    // JJ
    // 1:1 수정 적용
    @PostMapping("/updateQna.do")
    public String updateNotice(HttpServletRequest request, HttpSession session, BoardVo boardVo, ServletResponse response, Model model) throws IOException {
        
        // 기존 게시물 정보 가져오기
        BoardVo originalNotice = boardService.selectNoticeDetail(boardVo.getNo());
        
        boardVo.setRegId(originalNotice.getRegId());
        boardVo.setRegDate(originalNotice.getRegDate());

        // 수정된 게시물 정보 조회
        BoardVo updatedNotice = boardService.selectNoticeDetail(boardVo.getNo());
        model.addAttribute("notice", updatedNotice);
        
		return "redirect:/admin/business/qnaList.do?typeCode=" + boardVo.getTypeCode();

    }
    
    // 파일 확장자 얻기
    private String getFileExtension(String fileName) {
        int dotIndex = fileName.lastIndexOf('.');
        if (dotIndex == -1 || dotIndex == fileName.length() - 1) {
            return "";
        }
        return fileName.substring(dotIndex + 1).toLowerCase();
    }
    
	// 이미지 저장 및 파일명 반환 메서드
    private String saveImage(MultipartFile file) throws IOException {
        String saveName = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
        String fullPath = UPLOAD_PATH + File.separator + saveName;
        File dest = new File(fullPath);
        file.transferTo(dest);
        return saveName;
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
