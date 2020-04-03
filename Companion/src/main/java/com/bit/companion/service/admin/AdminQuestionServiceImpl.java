package com.bit.companion.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.common.Search;
import com.bit.companion.model.admin.AdminQuestionDao;
import com.bit.companion.model.entity.admin.AdminArticleVo;

@Service
public class AdminQuestionServiceImpl implements AdminQuestionService{

	@Autowired
	AdminQuestionDao adminQuestionDao;

	// question list
	@Override
	public void questionList(Model model, int page, int range, String searchType, String keyword, Search search) {
		try {
			// Total list Count
			search.setListSize(5);
			int questionListCnt = adminQuestionDao.questionTotal(search);
			
			// Pagination
			search.setSearchType(searchType);
			search.setKeyword(keyword);
			search.pageInfo(page, range, questionListCnt);
			
			List<AdminArticleVo> list = adminQuestionDao.selectQuestion(search);
			
			model.addAttribute("total", questionListCnt);
			model.addAttribute("search",search);
			model.addAttribute("adminQuestionList",list);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	// answer list
	@Override
	public void answerList(Model model, int page, int range, String searchType, String keyword, Search search) {
		try {
			// Total list Count
			search.setListSize(10);
			int answerListCnt = adminQuestionDao.answerTotal(search);
			
			// Pagination
			search.setSearchType(searchType);
			search.setKeyword(keyword);
			search.pageInfo(page, range, answerListCnt);
			
			List<AdminArticleVo> list = adminQuestionDao.selectAnswer(search);
			
			model.addAttribute("total", answerListCnt);
			model.addAttribute("search",search);
			model.addAttribute("adminAnswerList",list);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
}
