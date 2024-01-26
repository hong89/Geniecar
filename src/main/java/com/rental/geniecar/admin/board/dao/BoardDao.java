package com.rental.geniecar.admin.board.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.rental.geniecar.common.domain.BoardVo;

@Mapper
public interface BoardDao {
	
	List<BoardVo> selectBoardList(BoardVo boardVo);
	
}
