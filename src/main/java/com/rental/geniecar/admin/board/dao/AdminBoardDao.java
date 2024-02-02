package com.rental.geniecar.admin.board.dao;

import java.util.List;

import com.rental.geniecar.domain.board.CommonCrudVo;
import org.apache.ibatis.annotations.Mapper;
import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.common.FileVo;

@Mapper
public interface AdminBoardDao {
	
	List<CommonCrudVo> selectBoardList(CommonCrudVo boardVo);

	int selectBoardListSize(CommonCrudVo boardVo);

	void insertBoard(BoardVo boardVo);

	BoardVo selectNotice(int no);

	BoardVo updateNoticeForm(int no);

	void updateNotice(BoardVo boardVo);

	void deleteNotice(int no);

	void insertBoardImage(FileVo fileVo);

	List<FileVo> selectImageFiles(int fileNo);

	int selectNewFileNo();
	
	
}
