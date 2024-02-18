package com.rental.geniecar.admin.board.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rental.geniecar.admin.board.service.AdminBoardService;
import com.rental.geniecar.common.service.CommonService;
import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.FileVo;
import com.rental.geniecar.domain.member.MemberVo;

@Controller
@RequestMapping("/admin/board/")
public class AdminBoardController {
    private static final String UPLOAD_PATH = "C:\\geniecar_images";

    private void setImageFilePath(List<FileVo> imageFiles, String savePath) {
        for (FileVo imageFile : imageFiles) {
            imageFile.setImageFilePath(savePath, imageFile.getSaveName());
            System.err.println("######## :: 이미지 경로확인 " + imageFile.getImageFilePath());
        }
    }

    @Autowired
    private AdminBoardService boardService;

    // JJ 이미지 업로드 확인용
    @GetMapping("/uploadForm.do")
    public String uploadForm() {
        return "admin/board/uploadForm";
    }

    // JJ
    // 게시판 목록 보기
    @GetMapping("/list.do")
    public String listNotice(CommonCrudVo boardVo, Model model) {
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
        
        return "admin/board/list";
    }

    // JJ
    // 게시판 상세 보기 (여기 부분 확인 필요 fileNo)
    @GetMapping("/detailNotice.do")
    public String detailNotice(@RequestParam int no, Model model) {
        BoardVo notice = boardService.selectNoticeDetail(no);

        // 이미지 파일 정보 가져오기
        List<FileVo> imageFiles = boardService.selectImageFiles(notice.getFileNo());
        
        System.out.println(imageFiles.toString());
        // 이미지 경로
        setImageFilePath(imageFiles, UPLOAD_PATH);

        model.addAttribute("notice", notice);
        model.addAttribute("imageFiles", imageFiles);

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
    public String faqList(CommonCrudVo boardVo, Model model) {
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
        return "admin/board/faqList";
    }

    // JJ
    // 게시판 새 글 쓰기 (동작 확인 이미지 넣기)
    @PostMapping("/insertBoard.do")
    public String insertBoard(HttpServletRequest request, HttpSession session, BoardVo boardVo, @RequestParam("file") MultipartFile[] files, ServletResponse response, @RequestParam(value = "returnUrl", required = false) String returnUrl, RedirectAttributes redirectAttributes) throws IOException {
    	
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
                boardService.insertBoard(boardVo, fileList);
            }
            
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (returnUrl != null && !returnUrl.isEmpty()) {
            return "redirect:" + returnUrl;
        } else {
        	redirectAttributes.addAttribute("typeCode", typeCode);
        	return "redirect:/admin/board/list.do";
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
    // 공지사항 글 폼 불러오기
    @GetMapping("/updateNoticeForm.do")
    public String updateNoticeForm(@RequestParam int no, Model model) {
        BoardVo notice = boardService.selectNoticeDetail(no);
        model.addAttribute("notice", notice);
        
        List<FileVo> imageFiles = boardService.selectImageFiles(notice.getFileNo());
        model.addAttribute("imageFiles", imageFiles);
        
        return "admin/board/updateNoticeForm";
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
                        System.err.println("####### fullPath " + fullPath);
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
        
        return "redirect:/admin/board/list.do?typeCode=" + boardVo.getTypeCode();
        //return "redirect:/admin/board/detailNotice.do?no=" + boardVo.getNo();
        //return "admin/board/updateNoticeForm";
    }

	// 이미지 저장 및 파일명 반환 메서드
    private String saveImage(MultipartFile file) throws IOException {
        String saveName = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
        String fullPath = UPLOAD_PATH + File.separator + saveName;
        File dest = new File(fullPath);
        file.transferTo(dest);
        return saveName;
    }

    // JJ
    // 게시판 내용 삭제하기
    @GetMapping("/deleteNotice.do")
    public String deleteNotice(@RequestParam int no, @RequestParam int fileNo) {
        boardService.deleteNotice(no, fileNo);
        return "redirect:/admin/board/list.do?typeCode=NOTICE";
    }


    // JJ 이미지 업로드 확인용 (업로드)

    @PostMapping("/uploadForm.do")
    public ModelAndView upload(MultipartHttpServletRequest multipartRequest,
                               HttpServletResponse response) throws Exception {
        multipartRequest.setCharacterEncoding("utf-8");
        Map map = new HashMap();
        Enumeration enu = multipartRequest.getParameterNames();
        while (enu.hasMoreElements()) {
            String name = (String) enu.nextElement();
            String value = multipartRequest.getParameter(name);
            map.put(name, value);
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
        while (fileNames.hasNext()) {
            String fileName = fileNames.next();
            MultipartFile mFile = multipartRequest.getFile(fileName);
            String originalFileName = mFile.getOriginalFilename();
            fileList.add(originalFileName);
            File file = new File(UPLOAD_PATH + "\\" + fileName);
            if (mFile.getSize() != 0) {
                if (!file.exists()) {
                    if (file.getParentFile().mkdirs()) {
                        file.createNewFile();
                    }
                }
                mFile.transferTo(new File(UPLOAD_PATH + "\\" + originalFileName));
            }
        }
        return fileList;
    }


    // JJ 이미지 다운로드 확인용

    @GetMapping("/download.do")
    protected void download(@RequestParam("imageFileName") String imageFileName,
                            HttpServletResponse response) throws Exception {
        OutputStream out = response.getOutputStream();
        String filePath = UPLOAD_PATH + "\\" + imageFileName;
        File image = new File(filePath);
        int lastIndex = imageFileName.lastIndexOf(".");
        String fileName = imageFileName.substring(0, lastIndex);
        File thumbnail = new File(UPLOAD_PATH + "\\" + "thumbnail" + "\\" + fileName + ".jpg");

        if (image.exists()) {
            // 파일을 직접 읽어와서 출력 스트림으로 전송
            FileInputStream fis = new FileInputStream(image);
            byte[] buffer = new byte[1024 * 8];
            int length;
            while ((length = fis.read(buffer)) > 0) {
                out.write(buffer, 0, length);
            }
            fis.close();

            // 브라우저에게 파일 타입을 알려주는 헤더 설정
            response.setHeader("Content-Type", "application/octet-stream");
            // 브라우저에게 파일을 다운로드로 처리하도록 설정
            response.setHeader("Content-Disposition", "attachment; filename=\"" + imageFileName + "\"");
        } else {
            return;
        }

        out.close();
    }

}
