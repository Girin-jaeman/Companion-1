package com.bit.companion.service.admin;

import org.springframework.ui.Model;

import com.bit.companion.common.Search;

public interface AdminQuestionService {

	// question list
	void questionList(Model model, int page, int range, String searchType, String keyword, Search search);
	
	// answer list
	void answerList(Model model, int page, int range, String searchType, String keyword, Search search);

}
