package com.rental.geniecar.admin.board.service;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.rental.geniecar.admin.board.dao.AdminBoardDao;
import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.FileVo;
import com.rental.geniecar.domain.member.MemberVo;


@Service
@Transactional
public class AdminBoardService {
	private static final String UPLOAD_PATH = "C:\\geniecar_images";
	
	@Autowired
    private AdminBoardDao boardDao;
	
	
	// 이미지 경로 가져오기
	private void setImageFilePath(List<FileVo> imageFiles, String savePath) {
		for (FileVo imageFile : imageFiles) {
			imageFile.setImageFilePath(savePath, imageFile.getSaveName());
		}
	}
	// 이미지 리스트
	public List<FileVo> selectImageFiles(int no) {
		List<FileVo> imageFiles = boardDao.selectImageFiles(no);
		setImageFilePath(imageFiles, "C:\\geniecar_images");
		return imageFiles;
	}

	public List<CommonCrudVo> selectBoardList(CommonCrudVo boardVo) {
		List<CommonCrudVo> boardList = boardDao.selectBoardList(boardVo);
		return boardList;
	}
	
	public int selectBoardListSize(CommonCrudVo boardVo) {
		return boardDao.selectBoardListSize(boardVo);
	}

	public void insertBoard(BoardVo boardVo, List<FileVo> fileList, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MemberVo memberInfo = (MemberVo) session.getAttribute("memberInfo");
		String regId = memberInfo.getId();

		int newFileNo = boardDao.selectNewFileNo();
		for(int i = 0; i < fileList.size(); i++){
			FileVo fileVo = fileList.get(i);
			fileVo.setSeq(i+1);
			fileVo.setFileNo(newFileNo);
			fileVo.setRegId(regId);
			boardDao.insertBoardImage(fileVo);
		}
		boardVo.setFileNo(newFileNo);
		boardDao.insertBoard(boardVo);
	}

	public BoardVo selectNoticeDetail(int no) {
		return boardDao.selectNotice(no);
	}
	
	public BoardVo updateNoticeForm(int no) {
		return boardDao.updateNoticeForm(no);
	}

	public void updateNotice(BoardVo boardVo, List<FileVo> fileList) {
		
		int newFileNo = boardDao.selectNewFileNo();
		for(int i = 0; i < fileList.size(); i++){
			FileVo fileVo = fileList.get(i);
			fileVo.setSeq(i+1);
			fileVo.setFileNo(newFileNo);
			boardDao.insertBoardImage(fileVo);
		}
		boardVo.setFileNo(newFileNo);
		boardDao.updateNotice(boardVo);
	}
	
	public void deleteNotice(int no, int fileNo) {
		boardDao.deleteNotice(no);
		boardDao.deleteImage(fileNo);
	}
	
	public List<FileVo> getFileById(int fileNo) {
		return boardDao.findByFileNo(fileNo);
	}
	
	public void updateImageFile(FileVo fileVo, MultipartFile newImageFile) {
		try {
			if (newImageFile == null || newImageFile.isEmpty()) {
				throw new IllegalArgumentException("새로운 이미지 파일이 없습니다.");
			}
			
			 // 이미지 파일 업로드 및 정보 업데이트
	        String saveName = saveImage(newImageFile);
	        
	        FileVo newFileVo = new FileVo();
	        newFileVo.setSaveName(saveName);
	        newFileVo.setFileNo(fileVo.getFileNo()); // 기존 파일 번호

	        // 파일 정보를 업데이트합니다.
	        Integer fileNo = fileVo.getFileNo();
	        if (fileNo != null && fileNo > 0) {
	            boardDao.updateImageFile(newFileVo);
	        } else {
	            boardDao.insertBoardImage(newFileVo);
	        }
			
		} catch (Exception e) {
	        e.printStackTrace();
	        throw new RuntimeException("이미지 업데이트 중 오류 발생: " + e.getMessage());
	    }
        
	}
	private String saveImage(MultipartFile newImageFile) {
		try {
	        // 저장할 경로 설정
	        String saveDirectory = "C:\\geniecar_images";

	        // 새로운 파일 이름 생성
	        String originalFilename = newImageFile.getOriginalFilename();
	        String extension = FilenameUtils.getExtension(originalFilename); // 파일 확장자
	        String newFilename = UUID.randomUUID().toString() + "." + extension;

	        // 저장할 파일 객체 생성
	        File dest = new File(saveDirectory, newFilename);

	        // 파일 저장
	        newImageFile.transferTo(dest);

	        // 저장된 파일 이름(또는 경로) 반환
	        return newFilename;
	    } catch (IOException e) {
	        e.printStackTrace();
	        throw new RuntimeException("이미지 저장 중 오류가 발생했습니다: " + e.getMessage());
	    }
	}
	public List<FileVo> selectImageFilesByTypeCode(String typeCode) {
		List<FileVo> imageFiles = boardDao.selectImageFilesByTypeCode(typeCode);
		return imageFiles;
	}
	public List<FileVo> selectImageFilesByNo(int no) {
		return boardDao.selectImageFilesByNo(no);
	}
	public void insertImageFiles(List<FileVo> fileList) {
		for (FileVo fileVo : fileList) {
			boardDao.insertBoardImage(fileVo);
		}
		
	}
	public void updateImageFile(FileVo fileVo) {
		
	}
	public List<CommonCrudVo> selectBoardListById(Map<String, Object> paramMap) {
		return boardDao.selectBoardListById(paramMap);
	}
	public List<CommonCrudVo> selectQnaList(CommonCrudVo boardVo) {
		List<CommonCrudVo> boardList = boardDao.selectQnaList(boardVo);
		return boardList;
	}
	
}
