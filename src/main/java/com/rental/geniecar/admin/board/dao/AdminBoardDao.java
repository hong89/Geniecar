package com.rental.geniecar.admin.board.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.rental.geniecar.common.domain.BoardVo;

@Mapper
public interface AdminBoardDao {
	
	List<BoardVo> selectBoardList(BoardVo boardVo);

	int selectBoardListSize(BoardVo boardVo);

	void insertBoard(BoardVo boardVo);

	BoardVo selectNotice(int no);

	BoardVo updateNoticeForm(int no);

	void updateNotice(BoardVo boardVo);

	void deleteNotice(int no);
	
	
}
