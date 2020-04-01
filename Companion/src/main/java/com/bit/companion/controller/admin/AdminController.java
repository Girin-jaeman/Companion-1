package com.bit.companion.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.companion.service.admin.AdminHomeService;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	@Autowired
	AdminHomeService adminHomeService;

	private static final Logger log=LoggerFactory.getLogger(AdminArticleController.class);
	
	@RequestMapping(value = {"admin_home","/",""}, method = RequestMethod.GET)
	public String adminHome(Model model) {
		log.info("get admin home");
		
		adminHomeService.list(model);
		
		return "admin/admin_home";
	}
}
