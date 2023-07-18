package com.victor.dongwha.vo;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Builder
public class FileVO {
    public FileVO() {
	}
		private Long seq;           // 파일 번호 (PK)
    private String orgName;     // 원본파일명
    private String fileName;    // 저장파일명
    private String fileType;    // 파일 확장자
    private Long fileSize;      // 파일크기
}
