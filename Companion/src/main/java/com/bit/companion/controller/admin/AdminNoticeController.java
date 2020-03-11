package com.bit.companion.controller.admin;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.companion.service.admin.AdminService;

@Controller
@RequestMapping(value = "/admin")
public class AdminNoticeController {

	@Autowired
	AdminService adminService;
	
	@RequestMapping(value = "/admintest")
	public String home(Locale locale, Model model) {
		adminService.list(model);
		return "admin/admintest";
	}
}
