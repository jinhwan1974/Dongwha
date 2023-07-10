package com.victor.dongwha.controller;

import com.victor.dongwha.service.BoardDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardDataController {
    @Autowired
    BoardDataService boardDataService;

    @GetMapping("/boardList.do")
    public String boardList(ModelMap model) throws Exception {
        model.addAttribute("boardList", boardDataService.getBoardList());

        return "board_list";
    }
}
