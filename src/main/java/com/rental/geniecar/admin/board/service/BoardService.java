package com.rental.geniecar.admin.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rental.geniecar.admin.board.dao.BoardDao;
import com.rental.geniecar.common.domain.BoardVo;


@Service
@Transactional
public class BoardService {
	
	@Autowired
    private BoardDao boardDao;

	public List<BoardVo> selectBoardList(BoardVo boardVo) {
		List<BoardVo> boardList = boardDao.selectBoardList(boardVo);
		return boardList;
	}

}

