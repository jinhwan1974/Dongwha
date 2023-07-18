package com.victor.dongwha.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.victor.dongwha.common.FileUtils;
import com.victor.dongwha.service.BoardDataService;
import com.victor.dongwha.service.FileService;
import com.victor.dongwha.vo.BoardDataVO;
import com.victor.dongwha.vo.FileVO;

import lombok.extern.slf4j.Slf4j;

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
			List<BoardDataVO> 반환받은거 = boardDataService.getBoardList();
			model.addAttribute("boardList", 반환받은거);

			log.info("게시판 목록 페이지 진입");

			return "board_list";
	}

	/* 등록 페이지 호출 */
	@GetMapping("/boardWrite.do")
  public String boardWrite() {
			return "board_write";
	}

	/* 등록 */ 
	@PostMapping("/addBoardData.do")
	public String addBoardData(BoardDataVO board, RedirectAttributes rttr) {
		// 값찍어보기
		//System.out.println(board);

		// 파일 업로드
		FileVO fileVO = fileUtils.uploadFile(board.getBoardFile());

		// 파일 정보 DB INSERT
		fileService.saveFile(fileVO);

		// 파일 PK 가져오기 (게시글에 파일PK 저장)
    fileVO.getSeq();
		board.setFileId(fileVO.getSeq()); // 
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

	@GetMapping("/boardView.do")
	public String inquiryBoardData(int boardId, ModelMap model) throws Exception {

		BoardDataVO boardDataVO = boardDataService.inquiryBoardData(boardId);
		model.addAttribute("pageInfo", boardDataVO);
		return "board_view";
	}


	/* 수정 페이지 호출 */
	@GetMapping("/boardEdit.do")
  public String editBoardDataGET(int boardId, ModelMap model) throws Exception {

		BoardDataVO boardDataVO = boardDataService.inquiryBoardData(boardId);
		model.addAttribute("pageInfo", boardDataVO);
		return "board_edit";
	}

	/* 수정 */
	@PostMapping("/editBoardData.do")
	public String editBoardDataPOST(BoardDataVO board, RedirectAttributes rttr) {
		// 값찍어보기
		System.out.println(board);

		// 파일 업로드
		// FileVO fileVO = fileUtils.uploadFile(board.getBoardFile());

		// 파일 정보 DB INSERT
		// fileService.saveFile(fileVO);

		// 파일 PK 가져오기 (게시글에 파일PK 저장)
    // fileVO.getSeq();
		// board.setFileId(fileVO.getSeq()); // 
		boardDataService.editBoardData(board); // 게시글 저장

		// 등록 성공여부 확인
		rttr.addFlashAttribute("result", "editBoardData success");

		return "redirect:boardList.do";
		
	}
	
	/* 삭제 */
	@PostMapping("/delBoardData.do")
	public String delBoardDataPOST(int boardId, RedirectAttributes rttr) throws Exception {

		boardDataService.delBoardData(boardId);
		rttr.addFlashAttribute("result", "delBoardData success");

		return "redirect:boardList.do";
	}

}
