package com.rental.geniecar.admin.board.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.rental.geniecar.admin.board.dao.AdminBoardDao;
import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.board.CommonCrudVo;
import com.rental.geniecar.domain.common.FileVo;


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

	public void insertBoard(BoardVo boardVo, List<FileVo> fileList) {

		int newFileNo = boardDao.selectNewFileNo();
		for(int i = 0; i < fileList.size(); i++){
			FileVo fileVo = fileList.get(i);
			fileVo.setSeq(i+1);
			fileVo.setFileNo(newFileNo);
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

	public void updateNotice(BoardVo boardVo) {
		boardDao.updateNotice(boardVo);
	}
	
	public void deleteNotice(int no, int fileNo) {
		boardDao.deleteNotice(no);
		boardDao.deleteImage(fileNo);
	}
	
	public List<FileVo> getFileById(int fileNo) {
		return boardDao.findByFileNo(fileNo);
	}
	
	public void updateImageFile(FileVo fileVo) {
		try {
		int fileNo = fileVo.getFileNo();
        MultipartFile editImageFile = fileVo.getEditImageFile();
        
        System.err.println("fileNo in updateImageFile: " + fileNo);
        System.err.println("editImageFile in updateImageFile: " + editImageFile.getOriginalFilename());

        List<FileVo> existingFile = boardDao.findByFileNo(fileNo);
        FileVo newFileVo = new FileVo();

	    
	    String saveDirectory = UPLOAD_PATH;
	    
	    try {
	        // 새로운 이미지 저장
	        String newFileName = UUID.randomUUID().toString() + "_" + editImageFile.getOriginalFilename();
	        editImageFile.transferTo(new File(saveDirectory, newFileName));

	        // 새로운 파일 정보 설정
	        newFileVo.setSaveName(newFileName);
	    } catch (IOException e) {
	        // 이미지 저장 실패
	        e.printStackTrace();
	        throw new RuntimeException("이미지 저장에 실패했습니다!!");
	    }
	    
	    if (existingFile  != null) {
	    	boardDao.updateImageFile(newFileVo);
	    } else {
	    	boardDao.insertBoardImage(newFileVo);
	    }
	
    } catch (Exception e) {
    	e.printStackTrace();
    	throw new RuntimeException("########## 이미지 업데이트중 오류 발생되었습니다.");
    }
}
	
	
}
