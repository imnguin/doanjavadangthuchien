package com.doan.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.doan.entities.Chapter;
import com.doan.entities.ImagesComic;
import com.doan.services.ChapterService;
import com.doan.services.ImagesComicService;
import com.google.gson.Gson;
@Controller
public class ImagesComicController {

	@Autowired
    private ImagesComicService imagesComicService;
	@Autowired
	ChapterService chapterServicel;
	@RequestMapping("/truyen")
	public String home(@RequestParam(value = "id") Long idcomic  ,@RequestParam(value = "name")String name, Model m) {
		List<ImagesComic> lstcommic = imagesComicService.getByNameAndNameComic(idcomic, name);
		m.addAttribute("comicchapter", lstcommic);
		m.addAttribute("idcomic", idcomic);
		m.addAttribute("chapter", name);
		List<Chapter> listCustomer = chapterServicel.getAllChapByIdcomic(idcomic);
		m.addAttribute("listchap", listCustomer);
        return "user/chapter";
    }
	@RequestMapping(value = "/xem/{idcomic}/{name}", method = RequestMethod.POST)
	@ResponseBody
	public String getds(@PathVariable(value="idcomic") Long idcomic , @PathVariable(value="name") String name){
    	List<ImagesComic> listCustomer = imagesComicService.getByNameAndNameComic(idcomic, name);
    	Gson json = new Gson();
    	String listjson = json.toJson(listCustomer);
		return listjson;
	}
}
