package com.labouardy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.labouardy.service.WorkshopService;

@Controller
public class IndexController {
	
	@Autowired
	private WorkshopService WorkshopService;
	
	@RequestMapping("/index")
	public String index(Model model){
		model.addAttribute("workshops", WorkshopService.findAll());
		return "index";
	}
}
