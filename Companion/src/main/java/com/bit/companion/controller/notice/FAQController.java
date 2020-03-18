package com.bit.companion.controller.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.service.notice.FAQService;

@Controller
@RequestMapping(value = "/faq")
public class FAQController {
	@Autowired
	FAQService faqService;

	@RequestMapping(value = {"/list","/"})
	public String faq(Model model
			,@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range) {
		faqService.list(model,page,range);
		return "notice/faq_list";
	}
}
