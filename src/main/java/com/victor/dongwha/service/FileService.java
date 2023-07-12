package com.victor.dongwha.service;

import com.victor.dongwha.mapper.FileMapper;
import com.victor.dongwha.vo.FileVO;
import org.springframework.stereotype.Service;

@Service
public class FileService {
    private final FileMapper fileMapper; // 생성자 주입 (필드, 수정주입보다는 생성자 주입 사용이 권고된다.)

    public FileService(FileMapper fileMapper) {
        this.fileMapper = fileMapper;
    }

		//파일등록
    public void saveFile(FileVO fileVO) {
        fileMapper.saveFile(fileVO);
    }
}
