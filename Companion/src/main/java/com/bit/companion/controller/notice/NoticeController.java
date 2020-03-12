package com.bit.companion.controller.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.service.notice.NoticeService;

@Controller
@RequestMapping(value = "/notice/")
public class NoticeController {
	@Autowired
	NoticeService noticeService;
	
	@RequestMapping(value = "list")
	public String list(Model model
			,@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range) {
		noticeService.list(model,page,range);
		return "notice/notice";
	}
	
	@RequestMapping(value = "detail/{idx}")
	public String detail(Model model,@PathVariable("idx") int ntc_id) {
		noticeService.detail(model, ntc_id);
		return "notice/detail";
	}
}
