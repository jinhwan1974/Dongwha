package com.victor.dongwha.controller;

import com.victor.dongwha.service.BoardDataService;
import com.victor.dongwha.vo.BoardDataVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class BoardDataController {
	@Autowired
	BoardDataService boardDataService;

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
        
		boardDataService.addBoardData(board);
		
		// 등록 성공여부 확인
		rttr.addFlashAttribute("result", "addBoardData success");
		return "redirect:boardList.do";
		
	}

}
