package com.rental.geniecar.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.FileVo;
import com.rental.geniecar.domain.member.LicenseVo;
import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.domain.member.MyReservationVo;
import com.rental.geniecar.domain.member.PointVo;
import com.rental.geniecar.login.service.LoginService;
import com.rental.geniecar.member.service.MemberService;
import com.rental.geniecar.point.service.PointService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MyPageController {
    private static final String UPLOAD_PATH = "C:\\geniecar_images";

    private void setImageFilePath(List<FileVo> imageFiles, String savePath) {
        for (FileVo imageFile : imageFiles) {
            imageFile.setImageFilePath(savePath, imageFile.getSaveName());
        }
    }

    @Autowired
    private AdminBoardService boardService;

    private final MemberService memberService;private final LoginService loginService;
    private final PointService pointService;

    //ruddud
    @GetMapping("/main.do")
    public String index(Model model, HttpSession session) {
        MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
        model.addAttribute("mypage",memberService.mypage(membervo.getId()));
        model.addAttribute("member", membervo);
        return "mypage/main";
    }

    //ruddud
    @GetMapping("/reservation.do")
    public String reservation(Model model, HttpSession session) {
        MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
        model.addAttribute("member", membervo);
        model.addAttribute("mypage",memberService.mypage(membervo.getId()));
        Map mypage = (Map) session.getAttribute("mypage");
        List<MyReservationVo> reservationList = memberService.allMyReservation(membervo.getId()); 
        model.addAttribute("reservationList", reservationList);
        return "mypage/reservation";
    }
	//ruddud
	@GetMapping("/reservationDetail.do")
	public String reservationDetail(@RequestParam("no") String no, Model model, HttpSession session){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
		model.addAttribute("mypage",memberService.mypage(membervo.getId()));
		model.addAttribute("reservation", memberService.selectOneReservation(no));
		model.addAttribute("license", memberService.selectLicense(membervo.getId()));
		model.addAttribute("payment", memberService.selectOnePayment(no));
        return "mypage/reservationDetail";
    }
	@GetMapping("/reservationCancel.do")
	public String reservationCancel(String no, HttpSession session, RedirectAttributes re){
		Map<String, String> map = new HashMap<>();
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		map.put("reservationNo", no);
		map.put("id", membervo.getId());		
		memberService.cancelReservation(map);
		re.addFlashAttribute("msg", "예약이 취소되었습니다.");
        return "redirect:/mypage/reservationDetail.do?no="+no;
    }
    //ruddud
    @GetMapping("/point.do")
    public String point(Model model, HttpSession session) {
        MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
        model.addAttribute("member", membervo);
        model.addAttribute("mypage",memberService.mypage(membervo.getId()));
        PointVo point = pointService.selectPoint(membervo.getId());
        model.addAttribute("point", point);
        List<PointVo> pointList = pointService.secletAll(membervo.getId());
        model.addAttribute("pointList", pointList);
        return "mypage/point";
    }

    //ruddud
    @GetMapping("/payment.do")
    public String payment(Model model, HttpSession session) {
        MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
        model.addAttribute("member", membervo);
        model.addAttribute("mypage",memberService.mypage(membervo.getId()));        
        model.addAttribute("paymentList",memberService.selectAllMyPayment(membervo.getId()));
        
        return "mypage/payment";
    }
    
    @GetMapping("/paymentDetail.do")
    public String paymentDetail(@RequestParam String no,Model model, HttpSession session) {
        MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
        model.addAttribute("member", membervo);
        model.addAttribute("mypage",memberService.mypage(membervo.getId()));
        
        return "mypage/paymentDetail";
    }

    //ruddud
    @GetMapping("/license.do")
    public String license(Model model, HttpSession session) {
        MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
        LicenseVo license = memberService.selectLicense(membervo.getId());
        model.addAttribute("member", membervo);
        model.addAttribute("mypage",memberService.mypage(membervo.getId()));
        model.addAttribute("license", license);
        return "mypage/license";
    }

    //ruddud
    @PostMapping("/addLicense.do")
    public String addLicense(HttpServletRequest request, RedirectAttributes re) throws ParseException {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        LicenseVo license = new LicenseVo();
        license.setLicenseGradeCode(request.getParameter("licenseGradeCode"));
        license.setLicenseNumber(request.getParameter("licenseNumber"));
        license.setDriverName(request.getParameter("driverName"));
        license.setMemberId(request.getParameter("memberId"));
        license.setDriverBirth(format.parse(request.getParameter("driverBirth")));
        license.setLicenseTestDate(format.parse(request.getParameter("licenseTestDate")));
        license.setLicenseIssueDate(format.parse(request.getParameter("licenseIssueDate")));
        re.addFlashAttribute("msg", "등록되었습니다.");
        memberService.insertLicense(license);
        return "redirect:/mypage/license.do";
    }

    //ruddud
    @PostMapping("/updateLicense.do")
    public String updateLicense(LicenseVo license, RedirectAttributes re) {
        memberService.updateLicense(license);
        re.addFlashAttribute("msg", "수정되었습니다.");
        return "redirect:/mypage/license.do";
    }

    //ruddud
    @GetMapping("/member/modify.do")
    public String memberModify(HttpSession session, Model model, RedirectAttributes re) {
        MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
        model.addAttribute("member", membervo);
        model.addAttribute("mypage",memberService.mypage(membervo.getId()));
        return "mypage/member/modify";
    }

    //ruddud
    @PostMapping("/member/domodify.do")
    public String domodify(HttpSession session, MemberVo vo, RedirectAttributes re) {
        session.removeAttribute("memberInfo");
        session.setAttribute("memberInfo", memberService.updateMember(vo));
        re.addFlashAttribute("msg", "회원정보가 수정되었습니다.");
        return "redirect:/mypage/member/modify.do";
    }

    //ruddud
    @GetMapping("/member/password.do")
    public String memberPassword(HttpSession session, Model model) {
        MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
        model.addAttribute("member", membervo);
        model.addAttribute("mypage",memberService.mypage(membervo.getId()));
        return "mypage/member/password";
    }

    //ruddud
    @PostMapping("/member/changepw.do")
    public String changepw(String currentPw, MemberVo vo, RedirectAttributes re, HttpSession session) {
        String msg = null;
        if (memberService.changepw(currentPw, vo) > 0) {
            msg = "ok";
            session.removeAttribute("memberInfo");
            session.setAttribute("memberInfo", memberService.selectOne(vo.getId()));
        } else {
            msg = "not";
        }
        re.addFlashAttribute("msg", msg);
        return "redirect:/mypage/member/password.do";
    }

    //ruddud
    @GetMapping("/member/leave.do")
    public String memberLeave(Model model, HttpSession session) {
        MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
        model.addAttribute("member", membervo);
        model.addAttribute("mypage",memberService.mypage(membervo.getId()));
        return "mypage/member/leave";
    }

    //ruddud
    @PostMapping("/leave.do")
    public String Leave(String id, HttpSession session) {
        memberService.leaveMember(id);
        session.setAttribute("isLogOn", false);
        session.removeAttribute("memberInfo");
        return "redirect:/main/index.do";
    }

    // JJ
    // 상담 신청
    @GetMapping("/consult.do")
    public String consult(Model model, HttpSession session) {
        MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
        model.addAttribute("member", membervo);
        model.addAttribute("mypage",memberService.mypage(membervo.getId()));
        return "mypage/consult";
    }

    // JJ
    // 1:1 문의
    @GetMapping("/qna.do")
    public String qna(CommonCrudVo boardVo, Model model, HttpSession session) {
        MemberVo memberVo = (MemberVo) session.getAttribute("memberInfo");
        
        String Id = memberVo.getId();
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("typeCode", boardVo.getTypeCode());
        paramMap.put("Id", Id);
        paramMap.put("title", boardVo.getTitle());
        paramMap.put("startPage", boardVo.getStartPage());
        paramMap.put("pageSize", boardVo.getPageSize());
        
        
        boardVo.setPageStartSet();
        List<CommonCrudVo> boardList = boardService.selectBoardListById(paramMap);
        boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
        boardVo.setPageEndSet();
        
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
      
        model.addAttribute("member", memberVo);
        model.addAttribute("mypage",memberService.mypage(memberVo.getId()));
        model.addAttribute("boardList", boardList);
        model.addAttribute("boardVo", boardVo);
        
        return "mypage/qna";
    }
    
    // JJ
    // 1:1 문의
    @GetMapping("/myReview.do")
    public String myReview(CommonCrudVo boardVo, Model model, HttpSession session) {
        MemberVo memberVo = (MemberVo) session.getAttribute("memberInfo");
        String Id = memberVo.getId();
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("typeCode", boardVo.getTypeCode());
        paramMap.put("Id", Id);
        paramMap.put("title", boardVo.getTitle());
        paramMap.put("startPage", boardVo.getStartPage());
        paramMap.put("pageSize", boardVo.getPageSize());
        
        boardVo.setPageStartSet();
        List<CommonCrudVo> boardList = boardService.selectBoardListById(paramMap);
        boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
        boardVo.setPageEndSet();
        
        for (CommonCrudVo notice : boardList) {
            if (notice instanceof BoardVo) {
                int no = ((BoardVo) notice).getNo();
                List<FileVo> imageFiles = boardService.selectImageFilesByNo(no);
                ((BoardVo) notice).setImageFiles(imageFiles);
            }
        }

        model.addAttribute("member", memberVo);
        model.addAttribute("boardList", boardList);
        model.addAttribute("boardVo", boardVo);
        model.addAttribute("mypage",memberService.mypage(memberVo.getId()));
        return "mypage/myReview";
    }
    
    // JJ
 	// 이용 후기 상세보기
 	@GetMapping("/myReviewDetail.do")
 	public String myReviewDetail(@RequestParam int no, Model model, HttpSession session) {
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
 		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
        model.addAttribute("mypage",memberService.mypage(membervo.getId()));
        model.addAttribute("member", membervo);
 		model.addAttribute("notice", notice);
 		model.addAttribute("imageFiles", imageFiles);
 		   
 		return "mypage/myReviewDetail";
 	}

    // JJ
    // 1:1문의 작성폼
    @GetMapping("/qnaRegister.do")
    public String qnaRegister() {
        return "mypage/qnaRegister";
    }

    // JJ
    // 게시판 글등록
    @PostMapping("/insertBoard.do")
    public String insertboard(HttpServletRequest request, HttpSession session, BoardVo boardVo, @RequestParam("file") MultipartFile[] files, HttpServletResponse response, @RequestParam(value = "returnUrl", required = false) String returnUrl, RedirectAttributes redirectAttributes) throws IOException {

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
            return "redirect:/mypage/main.do";
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
    // 1:1문의 상세보기
    @GetMapping("/qnaDetail.do")
    public String qnaDetail(@RequestParam int no, Model model, HttpSession session) {
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
        
        MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
        model.addAttribute("mypage",memberService.mypage(membervo.getId()));
        model.addAttribute("member", membervo);
        model.addAttribute("notice", notice);
        model.addAttribute("imageFiles", imageFiles);

        return "mypage/qnaDetail";
    }

    // JJ
    // 1:1문의 내용 삭제하기
    @GetMapping("/deleteNotice.do")
    public String deleteNotice(@RequestParam int no, @RequestParam int fileNo) {
    	BoardVo existingBoard = boardService.selectNoticeDetail(no);
        boardService.deleteNotice(no, fileNo);
        return "redirect:/mypage/qna.do?typeCode=" + existingBoard.getTypeCode();
    }
    
    // JJ
    // 이용 후기 내용 삭제하기
    @GetMapping("/deleteMyReview.do")
    public String deleteMyReview(@RequestParam int no, @RequestParam int fileNo) {
    	BoardVo existingBoard = boardService.selectNoticeDetail(no);
        boardService.deleteNotice(no, fileNo);
        return "redirect:/mypage/myReview.do?typeCode=" + existingBoard.getTypeCode();
    }
}
