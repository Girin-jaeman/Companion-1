package com.bit.companion.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.companion.service.admin.AdminMemberService;

@Controller
@RequestMapping(value = "/admin/")
public class AdminMemberController {
	
	private static final Logger log=LoggerFactory.getLogger(AdminNoticeController.class);
	
	@Autowired
	AdminMemberService adminMemberService;
	
	@RequestMapping(value = "member_list", method = RequestMethod.GET)
	public String adminHome() {
		log.info("get member list");
		return "admin/member_list";
	}
}
