package com.rental.geniecar.admin.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rental.geniecar.admin.board.dao.AdminBoardDao;
import com.rental.geniecar.common.domain.BoardVo;


@Service
@Transactional
public class AdminBoardService {
	
	@Autowired
    private AdminBoardDao boardDao;

	public List<BoardVo> selectBoardList(BoardVo boardVo) {
		List<BoardVo> boardList = boardDao.selectBoardList(boardVo);
		return boardList;
	}
	
	public int selectBoardListSize(BoardVo boardVo) {
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
	

}

