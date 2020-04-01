package com.bit.companion.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.service.admin.AdminMemberService;

@Controller
@RequestMapping(value = "/admin/")
public class AdminMemberController {
	
	private static final Logger log=LoggerFactory.getLogger(AdminArticleController.class);
	
	@Autowired
	AdminMemberService adminMemberService;
	
	// member list
	@RequestMapping(value = "member_list", method = RequestMethod.GET)
	public String memberList(Model model) {
		log.info("get member list");
		
		adminMemberService.list(model);
		return "admin/member_list";
	}
	
	// member detail
	@RequestMapping(value = "member_detail", method = RequestMethod.GET)
	public String memberDetail(Model model, @RequestParam String member_id ) {
		log.info("get member datail");
		
		adminMemberService.detail(model, member_id);
		return "admin/member_detail";
	}
}
