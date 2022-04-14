package com.doan.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.doan.entities.Comic;
import com.doan.services.ComicService;

@Controller
public class ComicController {
 
    @Autowired
    private ComicService comicService;
 
    @RequestMapping("/trang-chu")
    public String home(Model m) {
    	List<Comic> lstcommic = comicService.listAll();
    	m.addAttribute("lstcommic", lstcommic);
        return "user/index";
    }
	/*
	 * @RequestMapping("/new") public String newCustomerForm(Map<String, Object>
	 * model) { Comic customer = new Comic(); model.put("customer", customer);
	 * return "new_customer"; }
	 * 
	 * @RequestMapping(value = "/save", method = RequestMethod.POST) public String
	 * saveCustomer(@ModelAttribute("customer") Comic customer) {
	 * comicService.save(customer); return "redirect:/"; }
	 * 
	 * @RequestMapping("/edit") public ModelAndView editCustomerForm(@RequestParam
	 * long id) { ModelAndView mav = new ModelAndView("edit_customer"); Comic
	 * customer = comicService.get(id); mav.addObject("customer", customer);
	 * 
	 * return mav; }
	 * 
	 * @RequestMapping("/delete") public String deleteCustomerForm(@RequestParam
	 * long id) { comicService.delete(id); return "redirect:/"; }
	 */
}
