package com.rental.geniecar.admin.board.service;

import java.util.List;

import com.rental.geniecar.domain.board.CommonCrudVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rental.geniecar.admin.board.dao.AdminBoardDao;
import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.common.FileVo;


@Service
@Transactional
public class AdminBoardService {
	
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
		for(FileVo fileVo : fileList)
		boardDao.insertBoardImage(fileVo);
		boardVo.setFileNo(fileVo.getFileNo());
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

	public void deleteNotice(int no) {
		boardDao.deleteNotice(no);
	}


}

