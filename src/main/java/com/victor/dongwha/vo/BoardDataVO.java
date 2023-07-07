package com.victor.dongwha.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardDataVO {
    int boardId;
    String title;
    String content;
    String regId;
}
