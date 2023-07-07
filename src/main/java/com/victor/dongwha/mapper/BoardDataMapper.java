package com.victor.dongwha.mapper;

import com.victor.dongwha.vo.BoardDataVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface BoardDataMapper {
    public List<BoardDataVO> getBoardData() throws Exception;
}