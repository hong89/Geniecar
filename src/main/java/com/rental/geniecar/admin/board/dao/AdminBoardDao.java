package com.rental.geniecar.admin.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.rental.geniecar.domain.board.BoardVo;
import com.rental.geniecar.domain.board.CommonCrudVo;
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
	
	void deleteImage(int fileNo);

	void insertBoardImage(FileVo fileVo);

	List<FileVo> selectImageFiles(int fileNo);

	int selectNewFileNo();

	List<FileVo> findByFileNo(int fileNo);
	
	void updateImageFile(FileVo fileVo);

	List<FileVo> selectImageFilesByTypeCode(String typeCode);

	List<FileVo> selectImageFilesByNo(int no);

	void insertImageFile(FileVo fileVo);

	List<CommonCrudVo> selectBoardListById(Map<String, Object> paramMap);

	List<CommonCrudVo> selectQnaList(CommonCrudVo boardVo);

	int increaseHit(int no);

}
