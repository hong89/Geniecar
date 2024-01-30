package com.rental.geniecar.admin.board.controller;

import java.io.File;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.domain.board.BoardVo;

import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/admin/board/")
public class AdminBoardController {
	private static final String CURR_IMAGE_REPO_PATH = "C:\\geniecar_images";
	
	@Autowired
	private AdminBoardService boardService;
	
	// JJ 이미지 업로드 확인용 -----------
	@GetMapping("/uploadForm.do")
	public String uploadForm() {
		return "admin/board/uploadForm";
	}
		
	// JJ
	// 게시판 목록 보기
    @GetMapping("/list.do")
    public String listNotice(BoardVo boardVo, Model model) {
    	
    	// 페이징 전처리
    	boardVo.setPageStartSet();
    	// 목록조회
    	List<BoardVo> boardList = boardService.selectBoardList(boardVo);
    	// 목록 전체건수 조회
    	boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
    	// 페이징 후처리
    	boardVo.setPageEndSet();
    	
    	model.addAttribute("boardList", boardList);
    	model.addAttribute("boardVo", boardVo);
    	return "admin/board/list";
    }
    
    // JJ
    // 게시판 상세 보기
    @GetMapping("/detailNotice.do")
    public String detailNotice(@RequestParam int no, Model model) {
    	BoardVo notice = boardService.selectNoticeDetail(no);
    	model.addAttribute("notice", notice);
    	return "admin/board/detailNotice";
    }
    
    // 게시판 글 쓰기 폼
    @GetMapping("/register.do")
    public String register() {
        return "admin/board/register";
    }
    
    // JJ
    // 게시판 FAQ 목록 보기
    @GetMapping("/faqList.do")
    public String faqList(BoardVo boardVo, Model model) {
    	// 페이징 전처리
    	boardVo.setPageStartSet();
    	// 목록조회
    	List<BoardVo> boardList = boardService.selectBoardList(boardVo);
    	// 목록 전체건수 조회
    	boardVo.setTotalPageCount(boardService.selectBoardListSize(boardVo));
    	// 페이징 후처리
    	boardVo.setPageEndSet();
    	
    	model.addAttribute("boardList", boardList);
    	model.addAttribute("boardVo", boardVo);
        return "admin/board/faqList";
    }

    // JJ
    // 게시판 새 글 쓰기 (동작 확인 완료)
    @PostMapping("/insertBoard.do")
    public String insertBoard(BoardVo boardVo) {
    	boardService.insertBoard(boardVo);
    	return "redirect:/admin/board/list.do?typeCode=NOTICE";
    }
    
    // JJ
    // 공지사항 글 폼 불러오기
    @GetMapping("/updateNoticeForm.do")
    public String updateNoticeForm(@RequestParam int no, Model model) {
    	BoardVo notice = boardService.selectNoticeDetail(no);
    	model.addAttribute("notice", notice);
    	return "admin/board/updateNoticeForm";
    }
    
    // JJ
    // 게시판 수정 적용
    @PostMapping("/updateNotice.do")
    public String updateNotice(BoardVo boardVo, Model model) {
    	boardService.updateNotice(boardVo);
    	BoardVo notice = boardService.selectNoticeDetail(boardVo.getNo());
    	model.addAttribute("notice", notice);
    	return "admin/board/updateNoticeForm";
	}
    
    // JJ
    // 게시판 내용 삭제하기
    @GetMapping("/deleteNotice.do")
    public String deleteNotice(int no) {
    	boardService.deleteNotice(no);
    	return "redirect:/admin/board/list.do?typeCode=NOTICE";
    }
    
    
    
    
    // JJ 이미지 업로드 확인용 (업로드)
    
    @PostMapping("/uploadForm.do")
	public ModelAndView upload(MultipartHttpServletRequest multipartRequest,
					HttpServletResponse response) throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		Map map = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();
		while(enu.hasMoreElements()) {
			String name = (String)enu.nextElement();
			String value = multipartRequest.getParameter(name);
			map.put(name,value);
		}
		List fileList = fileProcess(multipartRequest);
		map.put("fileList", fileList);
		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map);
		mav.setViewName("result");
		return mav;
	}
	
	private List<String> fileProcess(MultipartHttpServletRequest multipartRequest) throws Exception {
		List<String> fileList = new ArrayList<String>();
		Iterator<String> fileNames = multipartRequest.getFileNames();
		while(fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			String originalFileName = mFile.getOriginalFilename();
			fileList.add(originalFileName);
			File file = new File(CURR_IMAGE_REPO_PATH + "\\" + fileName);
			if(mFile.getSize() != 0) {
				if(! file.exists()) {
					if(file.getParentFile().mkdirs()) {
						file.createNewFile();
					}
				}
				mFile.transferTo(new File(CURR_IMAGE_REPO_PATH + "\\" + originalFileName));
			}
		}
		return fileList;
	}
    
    
    // JJ 이미지 업로드 확인용 (다운로드)
	
	@GetMapping("/download.do")
	protected void download(@RequestParam("imageFileName") String imageFileName,
					HttpServletResponse response) throws Exception {
		OutputStream out = response.getOutputStream();
		String filePath = CURR_IMAGE_REPO_PATH + "\\" + imageFileName;
		File image = new File(filePath);
		int lastIndex = imageFileName.lastIndexOf(".");
		String fileName = imageFileName.substring(0, lastIndex);
		File thumbnail = new File(CURR_IMAGE_REPO_PATH+"\\"+"thumbnail"+"\\"+fileName+".jpg");
		if (image.exists()) {
			Thumbnails.of(image).size(300,300).outputFormat("jpg").toOutputStream(out);
		} else {
			return;
		}
		
		byte[] buffer = new byte[1024 * 8];
			out.write(buffer);
			out.close();
		}
    
    
    
    
    
    
}
