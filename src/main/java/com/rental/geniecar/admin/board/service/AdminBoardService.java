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

	public List<CommonCrudVo> selectBoardList(CommonCrudVo boardVo) {
		List<CommonCrudVo> boardList = boardDao.selectBoardList(boardVo);
		return boardList;
	}
	
	public int selectBoardListSize(CommonCrudVo boardVo) {
		return boardDao.selectBoardListSize(boardVo);
	}

	public void insertBoard(BoardVo boardVo) {
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

	public void insertBoardImage(FileVo fileNo) {
		boardDao.insertBoardImage(fileNo);
	}
	

}

