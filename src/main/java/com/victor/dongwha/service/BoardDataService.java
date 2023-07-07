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
    public List<BoardDataVO> getBoardList() throws Exception {
        return boardDataMapper.getBoardData();
    }
}
