package com.victor.dongwha.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
@ToString
public class BoardDataVO {

	/* 게시판 번호 */
	private int boardId; // 게시판 번호 (PK)
	private String company; // 회사명
	private String title; // 게시판 제목
	private Long fileId; // 파일 번호 (PK)
	private String regId; // 등록 아이디
	private Date regDate; // 등록 날짜
	private String content; // 내용
	private String orgName; // 원본 파일명
	private MultipartFile boardFile; // 첨부파일
}
