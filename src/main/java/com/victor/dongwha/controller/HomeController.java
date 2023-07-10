package com.victor.dongwha.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.victor.dongwha.service.BoardDataService;

@Controller
public class HomeController {

    @Autowired
    BoardDataService boardDataService;

    @GetMapping("/")
    public String boardList(ModelMap model) throws Exception {
        model.addAttribute("boardList", boardDataService.getBoardList());

        return "index";
    }

    // @GetMapping("/")
    // public String home() throws Exception {
    //     return "index";
    // }
}
