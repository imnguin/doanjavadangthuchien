package com.doan.controllers.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.doan.entities.Chapter;
import com.doan.services.ChapterService;

@Controller
public class ChapterController {

	/*
	 * @Autowired private ChapterService chapterService;
	 * 
	 * @RequestMapping("/truyen") public String home(@RequestParam(value = "id")
	 * Long idcomic ,@RequestParam(value = "name")String name, Model m ) {
	 * List<Chapter> lstcommic = chapterService.getByNameAndNameComic(idcomic,
	 * name); m.addAttribute("comicchapter", lstcommic); return "user/chapter"; }
	 */
}
