package com.victor.dongwha.service;

import com.victor.dongwha.mapper.BoardDataMapper;
import com.victor.dongwha.vo.BoardDataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardDataService {

    @Autowired
    BoardDataMapper boardDataMapper;

		/* 목록 */
		public List<BoardDataVO> getBoardList() throws Exception {
        return boardDataMapper.getBoardData();
    }

		/* 등록 */
		public void addBoardData(BoardDataVO board) {
        boardDataMapper.addBoardData(board);
    }

		/* 조회 */
		public BoardDataVO inquiryBoardData(int boardId) throws Exception {
				return boardDataMapper.inquiryBoardData(boardId);
    }

}
