package com.rental.geniecar.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.FileVo;
import com.rental.geniecar.domain.member.LicenseVo;
import com.rental.geniecar.domain.member.MemberVo;
import com.rental.geniecar.domain.member.PointVo;
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

	private final MemberService memberService;
	private final PointService pointService;
	
	//ruddud
	@GetMapping("/main.do")
	public String index(Model model, HttpSession session){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
        return "mypage/main";
    }
	//ruddud
	@GetMapping("/reservation.do")
	public String reservation(Model model, HttpSession session){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
        return "mypage/reservation";
    }
	//ruddud
	@GetMapping("/reservationDetail.do")
	public String reservationDetail(Model model){

        return "mypage/reservationDetail";
    }
	//ruddud
	@GetMapping("/point.do")
	public String point(Model model, HttpSession session){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
		PointVo point = pointService.selectPoint(membervo.getId());
		model.addAttribute("point", point);
		List<PointVo> pointList = pointService.secletAll(membervo.getId());
		model.addAttribute("pointList", pointList);
        return "mypage/point";
    }
	//ruddud
	@GetMapping("/coupon.do")
	public String coupon(Model model, HttpSession session){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
        return "mypage/coupon";
    }
	//ruddud
	@GetMapping("/license.do")
	public String license(Model model, HttpSession session) {
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		LicenseVo license =  memberService.selectLicense(membervo.getId());
		model.addAttribute("member", membervo);
		model.addAttribute("license", license);
		return "mypage/license";
	}
	@PostMapping("/addLicense.do")
	public String addLicense(LicenseVo license) {
		System.out.println("++++++++++++++++++++++++++++" + license.toString());
		return "redirect:/mypage/license";
	}
	//ruddud
	@GetMapping("/member/modify.do")
	public String memberModify(HttpSession session, Model model){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
        return "mypage/member/modify";
    }
	//ruddud
	@PostMapping("/member/domodify.do")
	public String domodify(HttpSession session, MemberVo vo) {
		session.removeAttribute("memberInfo");
		session.setAttribute("memberInfo", memberService.updateMember(vo));
		return "redirect:/mypage/member/modify.do";
	}
	//ruddud
	@GetMapping("/member/password.do")
	public String memberPassword(HttpSession session, Model model){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
        return "mypage/member/password";
    }
	//ruddud
	@PostMapping("/member/changepw.do")
	public String changepw(String currentPw, MemberVo vo, RedirectAttributes re, HttpSession session) {
		String msg=null;
		if(memberService.changepw(currentPw, vo) >0) { 
			msg="ok"; 
			session.removeAttribute("memberInfo");
			session.setAttribute("memberInfo", memberService.selectOne(vo.getId()));
		} 
		else { msg="not"; }
		re.addFlashAttribute("msg", msg);
		return "redirect:/mypage/member/password.do";
	}
	//ruddud
	@GetMapping("/member/leave.do")
	public String memberLeave(Model model, HttpSession session){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
        return "mypage/member/leave";
    }
	//ruddud
	@PostMapping("/leave.do")
	public String  Leave(String id,HttpSession session) {
		memberService.leaveMember(id);
		session.setAttribute("isLogOn", false);
		session.removeAttribute("memberInfo");
		return "redirect:/main/index.do";
	}
	// JJ
	// 상담 신청
	@GetMapping("/consult.do")
	public String consult(Model model, HttpSession session){
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		model.addAttribute("member", membervo);
	    return "mypage/consult";
	}
	// JJ
	// 1:1 문의
	@GetMapping("/qna.do")
	public String qna(CommonCrudVo boardVo, Model model, HttpSession session){
		List<CommonCrudVo> boardList = boardService.selectBoardList(boardVo);
		MemberVo membervo = (MemberVo) session.getAttribute("memberInfo");
		
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
        
        model.addAttribute("member", membervo);
        model.addAttribute("boardList", boardList);
        model.addAttribute("boardVo", boardVo);
        
        return "mypage/qna";
    }
	
	// JJ
	// 1:1문의 작성폼
	@GetMapping("/qnaRegister.do")
	public String qnaRegister() {
	    return "mypage/qnaRegister";
	}
	
	// JJ
	// 1:1문의 상세보기
	@GetMapping("/qnaDetail.do")
	public String qnaDetail(@RequestParam int no, Model model) {
		BoardVo notice = boardService.selectNoticeDetail(no);
		
	    List<FileVo> imageFiles = boardService.selectImageFiles(notice.getFileNo());
 
	    setImageFilePath(imageFiles, UPLOAD_PATH);

	    model.addAttribute("notice", notice);
	    model.addAttribute("imageFiles", imageFiles);
		
		return "mypage/qnaDetail";
	}
	
}
