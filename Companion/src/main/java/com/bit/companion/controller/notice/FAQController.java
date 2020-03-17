package com.bit.companion.controller.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/faq")
public class FAQController {

	@RequestMapping(value = {"/list","/"})
	public String faq() {
		return "notice/faq_list";
	}
}
