package com.doan.controllers;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.doan.entities.Category;
import com.doan.entities.Comic;
import com.doan.model.UploadedFile;
import com.doan.services.CategoryService;
import com.doan.services.ComicService;
@Controller
@RequestMapping("quan-tri")
public class AdminController {

	@Autowired
    private ComicService comicService;
	@Autowired CategoryService categoryService;
	
	@RequestMapping("/")
	public String homepage(Model model) {
	List<Comic> lstcommic = comicService.listAll();
	model.addAttribute("lstcommic", lstcommic);
	model.addAttribute("category", new Category());
	return "admin/index";
	}
	
	@RequestMapping("/danh-muc")
	public String category(Model model) {
		List<Category> danhmuc = categoryService.listAll();
		model.addAttribute("dsdanhmuc", danhmuc);
	return "admin/category";
	}
	
	@RequestMapping("/them-danh-muc")
	public String addCategory(Map<String, Object> model) {
		Category cate = new Category();
		model.put("category", cate);
	return "admin/addcategory";
	}
	@RequestMapping(value = "/save", method = RequestMethod.POST) public String
	 saveCategory(@ModelAttribute("category") Category category) {
		categoryService.save(category); return "redirect:/quan-tri/danh-muc"; }
	
	@RequestMapping("/AddComic")
    public void saveFile(HttpServletRequest servletRequest, @ModelAttribute UploadedFile uploadedFile, BindingResult bindingResult, Model model) {
 
		String name = uploadedFile.getName();
		System.out.print(name);
        MultipartFile multipartFile = uploadedFile.getMultipartFile();
        String fileName = multipartFile.getOriginalFilename();
        String[] parts = fileName.split(".jpg");
        String thumbnail = "";
        for(int i =0 ; i < parts.length; i++)
        {
        	thumbnail = parts[i] + ".jpg";
        }
        
        try {
        	File file = new File("C:/New folder",fileName); 
        	multipartFile.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
