package com.bit.companion.service.admin;

import org.springframework.ui.Model;

import com.bit.companion.common.Search;
import com.bit.companion.model.entity.admin.AdminArticleVo;

public interface AdminArticleService {

	// notice list
	void list(Model model, int page, int range, String searchType, String keyword, Search search, int board_id);
	
	// notice detail
	void detail(Model model, AdminArticleVo bean, int board_id);
	
	// notice add
	void insert(AdminArticleVo bean, int board_id);
	
	// notice edit
	void update(AdminArticleVo bean, int board_id);
	
	// notice delete
	void delete(AdminArticleVo bean, int board_id);
	
}
