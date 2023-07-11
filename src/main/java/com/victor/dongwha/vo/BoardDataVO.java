package com.victor.dongwha.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardDataVO {

	/* 게시판 번호 */
	int boardId;
	String company;
	String title;
	int fileId;
	String regId;
	Date regDate;
	String content;
	String orgName;
}
