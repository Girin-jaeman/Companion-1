package com.bit.companion.controller.admin;

import java.util.Locale;

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
	AdminNoticeService adminService;
	
	// 공지사항 리스트 페이지
	@RequestMapping(value = "testnoticelist", method = RequestMethod.GET)
	public String noticeList(Model model) {
		logger.info("get notice list");
		adminService.list(model);
		return "admin/testnoticelist";
	}
	
	// 공지사항 상세 페이지
	@RequestMapping(value = "testnoticedetail/{idx}", method = RequestMethod.GET)
	public String noticeDetail(Model model, @PathVariable("idx") int article_id) {
		logger.info("get notice detail");
		adminService.detail(model, article_id);
		return "admin/testnoticedetail";
	}
	
	//공지사항 입력 페이지 GET
	@RequestMapping(value = "testnoticeadd", method = RequestMethod.GET)
	public String noticeAdd() {
		logger.info("get notice add");
		return "admin/testnoticeadd";
	}
	//공지사항 입력 페이지 POST
	@RequestMapping(value = "testnoticeadd", method = RequestMethod.POST)
	public String noticeAdd(@ModelAttribute AdminArticleVo bean ) {
		logger.info("post notice add");
		adminService.insert(bean);
		return "redirect:testnoticelist";
	}
	
	// 공지사항 수정 페이지
	@RequestMapping(value = "testnoticeedit/{idx}", method = RequestMethod.GET)
	public String noticeEdit(Model model, @PathVariable("idx") int article_id) {
		logger.info("get notice edit");
		adminService.detail(model, article_id);
		return "admin/testnoticeedit";
	}
	// 공지사항 수정 페이지
	@RequestMapping(value = "testnoticeedit/{idx}", method = RequestMethod.POST)
	public String noticeEdit(@ModelAttribute AdminArticleVo bean, @PathVariable("idx") int article_id) {
		logger.info("post notice edit");
		adminService.update(bean);
		return "redirect:../testnoticedetail/"+bean.getArticle_id();
	}
	// 공지사항 삭제 페이지
	@RequestMapping(value = "testnoticedelete", method = RequestMethod.POST)
	public String noticeDelete(@ModelAttribute AdminArticleVo bean) {
		logger.info("post notice delete");
		adminService.delete(bean);
		return "redirect:testnoticelist";
	}
}
