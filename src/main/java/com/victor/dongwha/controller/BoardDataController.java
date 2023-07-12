package com.victor.dongwha.controller;

import com.victor.dongwha.common.FileUtils;
import com.victor.dongwha.service.BoardDataService;
import com.victor.dongwha.service.FileService;
import com.victor.dongwha.vo.BoardDataVO;

import com.victor.dongwha.vo.FileVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Slf4j
public class BoardDataController {
	@Autowired
	BoardDataService boardDataService;

	@Autowired
	FileUtils fileUtils;

	@Autowired
	FileService fileService;

	/* 목록 */
	@GetMapping("/boardList.do")
	public String boardList(ModelMap model) throws Exception {
			model.addAttribute("boardList", boardDataService.getBoardList());

			return "board_list";
	}

	/* 등록 페이지 호출 */
	@GetMapping("/boardWrite.do")
  public String boardWrite() throws Exception {
			return "board_write";
	}

	/* 등록 */ 
	@PostMapping("/boardWrite2.do")
	public String addBoardData(BoardDataVO board, RedirectAttributes rttr) {
		// 값찍어보기
		System.out.println(board);
        
		FileVO fileVO = fileUtils.uploadFile(board.getBoardFile()); // 파일 업로드
		Long fileId = fileService.saveFile(fileVO); // 파일 정보 DB INSERT
		board.setFileId(fileId); // 파일 PK 가져오기 (게시글에 파일PK 저장)
		boardDataService.addBoardData(board); // 게시글 저장

		// 등록 성공여부 확인
		rttr.addFlashAttribute("result", "addBoardData success");
		return "redirect:boardList.do";
		
	}

}
