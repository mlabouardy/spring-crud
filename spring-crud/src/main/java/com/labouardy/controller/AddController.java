package com.labouardy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.labouardy.entity.Workshop;
import com.labouardy.service.WorkshopService;

@Controller
public class AddController {

	@Autowired
	private WorkshopService WorkshopService;
	
	@ModelAttribute("workshop")
	public Workshop construct(){
		return new Workshop();
	}
	
	@RequestMapping("/add")
	public String add(){
		return "new-workshop";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String createWorkshop(@ModelAttribute("workshop") Workshop workshop){
		WorkshopService.save(workshop);
		return "redirect:/index.html";
	}
	
	@RequestMapping("/workshop/update/{id}")
	public String updateWorkshop(Model model, @PathVariable int id){
		model.addAttribute("workshop", WorkshopService.findById(id));
		return "update-workshop";
	}
	
	@RequestMapping("/workshop/delete/{id}")
	public String deleteWorkshop(@PathVariable int id){
		WorkshopService.delete(id);
		return "redirect:/index.html";
	}
	
}
