package com.doan.controllers.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.doan.entities.Comic;
import com.doan.services.ComicService;
import com.google.gson.Gson;

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
    @RequestMapping(value = "/dshs", method = RequestMethod.GET)
	@ResponseBody
	public String getds(){
    	List<Comic> listCustomer = comicService.listAll();
    	Gson json = new Gson();
    	String listjson = json.toJson(listCustomer);
		return listjson;
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
