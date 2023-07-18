package com.victor.dongwha.mapper;

import com.victor.dongwha.vo.BoardDataVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface BoardDataMapper {
	/* 목록 */
	public List<BoardDataVO> getBoardData() throws Exception;

	/* 등록 */
	public void addBoardData(BoardDataVO board);

	/* 조회 */
	public BoardDataVO inquiryBoardData(int boardId);
	
	/* 수정 */
	public void editBoardData(BoardDataVO board);

	/* 삭제 */
	public int delBoardData(int boardId);
}
