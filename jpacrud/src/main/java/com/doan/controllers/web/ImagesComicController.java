package com.doan.controllers.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.doan.entities.ImagesComic;
import com.doan.services.ImagesComicService;
@Controller
public class ImagesComicController {

	@Autowired
    private ImagesComicService imagesComicService;
	@RequestMapping("/truyen")
	public String home(@RequestParam(value = "id") Long idcomic  ,@RequestParam(value = "name")String name, Model m ) {
		List<ImagesComic> lstcommic = imagesComicService.getByNameAndNameComic(idcomic, name);
		m.addAttribute("comicchapter", lstcommic);
        return "user/chapter";
    }
}
