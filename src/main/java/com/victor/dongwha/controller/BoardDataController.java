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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.nio.file.Path;
import java.nio.file.Paths;

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

			log.info("게시판 목록 페이지 진입");

			return "board_list";
	}

	/* 등록 페이지 호출 */
	@GetMapping("/boardWrite.do")
	public String boardWrite() {
		Path uploadPath = Paths.get("D:", "develop", "upload-files");
		log.info("uploadPath PathType ::: {}", uploadPath);
		String uploadPath2 = Paths.get("D:", "develop", "upload-files").toString();
		log.info("uploadPath StringType ::: {}", uploadPath2);
		return "board_write";
	}

	/* 등록 */ 
	@PostMapping("/addBoardData.do")
	public String addBoardData(BoardDataVO board, RedirectAttributes rttr) {
		// 값찍어보기
		System.out.println(board);

		FileVO fileVO = fileUtils.uploadFile(board.getBoardFile()); // 파일 업로드
		fileService.saveFile(fileVO); // 파일 정보 DB INSERT
		board.setFileId(fileVO.getSeq()); // 파일 PK 가져오기 (게시글 VO에 파일 seq를 세팅)
		boardDataService.addBoardData(board); // 게시글 저장

		// 등록 성공여부 확인
		rttr.addFlashAttribute("result", "addBoardData success");
		return "redirect:boardList.do";
	}

	/* 조회 */

	// @GetMapping("/boardView.do")
	// public String boardView() throws Exception {
	// 		return "boardView";
	// }


	@GetMapping("/boardView")
	public void inquiryBoardData(int boardId, ModelMap model) throws Exception {


		model.addAttribute("pageInfo", boardDataService.inquiryBoardData(boardId));
	}
}
