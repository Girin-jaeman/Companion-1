package com.bit.companion.service.admin;

import org.springframework.ui.Model;

import com.bit.companion.common.Search;
import com.bit.companion.model.entity.admin.AdminArticleVo;

public interface AdminArticleService {

	// article list
	void list(Model model, int page, int range, String searchType, String keyword, Search search, int board_id);
	
	// article detail
	void detail(Model model, AdminArticleVo bean, int board_id);
	
	// article add
	void insert(AdminArticleVo bean, int board_id);
	
	// article edit
	void update(AdminArticleVo bean, int board_id);
	
	// article delete
	void delete(AdminArticleVo bean, int board_id);
	
}
