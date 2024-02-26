package com.rental.geniecar.customer.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.common.service.CommonService;
import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.CommonCodeVo;
import com.rental.geniecar.domain.common.FileVo;
import com.rental.geniecar.domain.member.MemberVo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/customer")
@RequiredArgsConstructor
public class CustomerController {
	private static final String UPLOAD_PATH = "C:\\geniecar_images";
	private final CommonService commonService;
	
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
	
	// JJ
	// 게시판 글 등록
	@PostMapping("/insertBoard.do")
	public String insertboard(HttpServletRequest request, HttpSession session, BoardVo boardVo, @RequestParam("file") MultipartFile[] files, ServletResponse response, @RequestParam(value = "returnUrl", required = false) String returnUrl, RedirectAttributes redirectAttributes) throws IOException {
		
		MemberVo memberInfo = (MemberVo) session.getAttribute("memberInfo");
		String typeCode = request.getParameter("typeCode");
		
		if (memberInfo != null) {
	        String regId = memberInfo.getId();
	        boardVo.setRegId(regId);
	    } else {
	        String alertMessage = "로그인이 필요합니다. 로그인 페이지로 이동합니다.";
	        response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        out.println("<script>alert('" + alertMessage + "'); window.location.href='/login/login.do';</script>");
	        out.flush();
	        out.close();
	        return null;
	    }
		
	    List<FileVo> fileList = new ArrayList<>();
	    try {
	        if (files != null && files.length > 0) {

	            for (MultipartFile file : files) {
	                FileVo fileVo = new FileVo();
	                //fileVo.setRegId(boardVo.getRegId());  // 등록자 아이디 설정

	                // 파일 정보 설정 확인
	                fileVo.setFileName(file.getOriginalFilename());
	                fileVo.setFileSize((int) file.getSize());
	                
	                System.err.println("###### 파일이름 ::" + fileVo.getFileName());
	                
	                // 파일 저장 경로
	                String savePath = "C:\\geniecar_images";
	                String saveName = (fileVo.getFileName() != "") ? UUID.randomUUID().toString() + "_" + file.getOriginalFilename() : null;
	                System.err.println("UUID 생성" + saveName);
	                String fullPath = savePath + File.separator + saveName;

	                // 파일 저장 하기
	                File dest = new File(fullPath);
	                file.transferTo(dest);

	                // 파일 정보 설정 하기
	                fileVo.setSavePath(savePath);
	                fileVo.setSaveName(saveName);
	                fileVo.setExtension(getFileExtension(file.getOriginalFilename()));

	                System.out.println("fileVo" + fileVo.getFileNo());
	                fileList.add(fileVo);
	            }
	            // 파일과 이미지 정보 DB에 저장하기
	            boardService.insertBoard(boardVo, fileList, request);
	        }
	        
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	    if (returnUrl != null && !returnUrl.isEmpty()) {
	        return "redirect:" + returnUrl;
	    } else {
	    	redirectAttributes.addAttribute("typeCode", typeCode);
	    	return "redirect:/customer/reviewMain.do";
	    }
	    
	}

	// 파일 확장자 얻기
	private String getFileExtension(String fileName) {
	    int dotIndex = fileName.lastIndexOf('.');
	    if (dotIndex == -1 || dotIndex == fileName.length() - 1) {
	        return "";
	    }
	    return fileName.substring(dotIndex + 1).toLowerCase();
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

		return "customer/eventMain";
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

		return "customer/winnerEventMain";
	}

	// JJ
	// 당첨자 상세보기
	@GetMapping("/winnerEventDetail.do")
	public String winnerEventDetail(@RequestParam int no, HttpSession session,  Model model) {
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
		List<FileVo> imageFiles = boardService.selectImageFiles(notice.getFileNo());

		setImageFilePath(imageFiles, UPLOAD_PATH);

		model.addAttribute("notice", notice);
		model.addAttribute("imageFiles", imageFiles);

		return "customer/winnerEventDetail";
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

		return "customer/eventDetail";
	}

	@GetMapping("/noticeDetail.do")
	public String noticeDetail(@RequestParam int no, HttpSession session, Model model) {
		BoardVo notice = boardService.selectNoticeDetail(no);
		
		// 야는 F5 연타 날리면 조회수 신나게 올라감
        boardService.increaseHit(no);
        
        /*
        // 세션에 글번호 저장했다가 중복으로 글 조회수 올라가는거 막음
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
		List<FileVo> imageFiles = boardService.selectImageFiles(notice.getFileNo());

		setImageFilePath(imageFiles, UPLOAD_PATH);

		model.addAttribute("notice", notice);
		model.addAttribute("imageFiles", imageFiles);

		return "customer/noticeDetail";
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
		return "customer/noticeNewsMain";
	}
	//ruddud
	@GetMapping("/consult.do")
	public String consult(Model model) {
		List<CommonCodeVo> locations = commonService.selectCommonCodes("LOC");
        model.addAttribute("locations", locations);
		return "customer/consult";
	}
	@ResponseBody
	@GetMapping("/branch.do")
	public ResponseEntity branch(String groupCode) {
		 List<CommonCodeVo> branchCode = commonService.selectCommonCodes(groupCode);
		 return ResponseEntity.ok(branchCode);
	}

}
