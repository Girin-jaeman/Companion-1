package com.bit.companion.service.admin;

import org.springframework.ui.Model;

import com.bit.companion.model.entity.admin.AdminArticleVo;

public interface AdminNoticeService {

	// notice list
	void list(Model model);
	
	// notice detail
	void detail(Model model,int article_id);
	
	// notice add
	void insert(AdminArticleVo bean);
	
	// notice edit
	void update(AdminArticleVo bean);
	
	// notice delete
	void delete(AdminArticleVo bean);
	
}
