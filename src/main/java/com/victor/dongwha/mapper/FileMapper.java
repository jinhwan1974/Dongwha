package com.victor.dongwha.mapper;

import com.victor.dongwha.vo.FileVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface FileMapper {

    void saveFile(FileVO fileVO);

		public FileVO findFile(Long seq);

}

