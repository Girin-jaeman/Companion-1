package com.bit.companion.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.model.entity.admin.AdminArticleVo;
import com.bit.companion.service.admin.AdminNoticeService;

@Controller
@RequestMapping(value = "/admin/")
public class AdminNoticeController {

	private static final Logger logger=LoggerFactory.getLogger(AdminNoticeController.class);
	
	@Autowired
	AdminNoticeService adminNoticeService;
	
	// notice list - get 
	@RequestMapping(value = "testnoticelist", method = RequestMethod.GET)
	public String noticeList(Model model) {
		logger.info("get notice list");
		adminNoticeService.list(model);
		return "admin/testnoticelist";
	}
	
	// notice detail - get
	@RequestMapping(value = "testnoticedetail/{idx}", method = RequestMethod.GET)
	public String noticeDetail(Model model, @PathVariable("idx") int article_id) {
		logger.info("get notice detail");
		adminNoticeService.detail(model, article_id);
		return "admin/testnoticedetail";
	}
	
	// notice add - get
	@RequestMapping(value = "testnoticeadd", method = RequestMethod.GET)
	public String noticeAdd() {
		logger.info("get notice add");
		return "admin/testnoticeadd";
	}
	// notice add - post
	@RequestMapping(value = "testnoticeadd", method = RequestMethod.POST)
	public String noticeAdd(@ModelAttribute AdminArticleVo bean ) {
		logger.info("post notice add");
		adminNoticeService.insert(bean);
		return "redirect:testnoticelist";
	}
	
	// notice edit - get
	@RequestMapping(value = "testnoticeedit/{idx}", method = RequestMethod.GET)
	public String noticeEdit(Model model, @PathVariable("idx") int article_id) {
		logger.info("get notice edit");
		adminNoticeService.detail(model, article_id);
		return "admin/testnoticeedit";
	}
	// notice edit - post
	@RequestMapping(value = "testnoticeedit/{idx}", method = RequestMethod.POST)
	public String noticeEdit(@ModelAttribute AdminArticleVo bean, @PathVariable("idx") int article_id) {
		logger.info("post notice edit");
		adminNoticeService.update(bean);
		return "redirect:../testnoticedetail/"+bean.getArticle_id();
	}
	// notice delete - post
	@RequestMapping(value = "testnoticedelete", method = RequestMethod.POST)
	public String noticeDelete(@ModelAttribute AdminArticleVo bean) {
		logger.info("post notice delete");
		adminNoticeService.delete(bean);
		return "redirect:testnoticelist";
	}
}
