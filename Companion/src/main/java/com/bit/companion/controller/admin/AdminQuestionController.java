package com.bit.companion.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.common.Search;
import com.bit.companion.service.admin.AdminQuestionService;

@Controller
@RequestMapping(value = "/admin/")
public class AdminQuestionController {

	private static final Logger logger=LoggerFactory.getLogger(AdminArticleController.class);
	
	@Autowired
	AdminQuestionService adminQuestionService;
	
	// question list -get
	@RequestMapping(value = "question_list", method = RequestMethod.GET)
	public String questionList(Model model
			,@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range
			,@RequestParam(required = false, defaultValue = "all") String searchType
			,@RequestParam(required = false) String keyword
			,@ModelAttribute("search") Search search) {
		
		
		adminQuestionService.questionList(model, page, range, searchType, keyword, search);
		logger.info("get question list");
		return "admin/question_list";
	}
	
	// answer list -get
	@RequestMapping(value = "answer_list", method = RequestMethod.GET)
	public String answerList(Model model
			,@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range
			,@RequestParam(required = false, defaultValue = "all") String searchType
			,@RequestParam(required = false) String keyword
			,@ModelAttribute("search") Search search) {
		
		adminQuestionService.answerList(model, page, range, searchType, keyword, search);
		logger.info("get answer list");
		return "admin/answer_list";
	}
	
}
