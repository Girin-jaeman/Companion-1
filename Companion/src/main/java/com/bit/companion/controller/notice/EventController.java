package com.bit.companion.controller.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.service.notice.EventService;

@Controller
@RequestMapping(value = "/event")
public class EventController {
	@Autowired
	EventService eventService;

	@RequestMapping(value = {"/list","/"})
	public String list(Model model
			,@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range) {
		eventService.list(model,page,range);
		return "notice/event_list";
	}
	
	@RequestMapping(value = "/detail/{idx}")
	public String detail(Model model,@PathVariable("idx") int article_id) {
		eventService.detail(model, article_id);
		return "notice/event_detail";
	}
}
