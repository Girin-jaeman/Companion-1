package com.bit.companion.controller.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.companion.service.notice.NoticeService;

@Controller
@RequestMapping(value = "/notice/")
public class NoticeController {
	@Autowired
	NoticeService noticeService;
	
	@RequestMapping(value = "list")
	public String list(Model model) {
		noticeService.list(model);
		return "notice/notice";
	}
	
	@RequestMapping(value = "detail/{idx}")
	public String detail(Model model,@PathVariable("idx") int ntc_id) {
		noticeService.detail(model, ntc_id);
		return "notice/detail";
	}
}
