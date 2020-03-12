package com.bit.companion.controller.admin;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.companion.model.entity.admin.AdminNoticeVo;
import com.bit.companion.service.admin.AdminService;

@Controller
@RequestMapping(value = "/admin/")
public class AdminNoticeController {

	@Autowired
	AdminService adminService;
	
	// notice list page 
	@RequestMapping(value = "testnoticelist")
	public String noticeList(Model model) {
		adminService.list(model);
		return "admin/testnoticelist";
	}
	
	//notice add page - GET
	@RequestMapping(value = "testnoticeadd", method = RequestMethod.GET)
	public String noticeAdd() {
		return "admin/testnoticeadd";
	}
	//notice add page - POST
	@RequestMapping(value = "testnoticeadd", method = RequestMethod.POST)
	public String noticeAdd(@ModelAttribute AdminNoticeVo bean ) {
		adminService.insert(bean);
		return "redirect:testnoticelist";
	}
}
