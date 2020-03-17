package com.bit.companion.service.admin;

import org.springframework.ui.Model;

import com.bit.companion.model.entity.admin.AdminArticleVo;

public interface AdminService {

	// 공지사항 리스트
	void list(Model model);
	// 공지사항 상세
	void detail(Model model,int article_id);
	// 공지사항 입력
	void insert(AdminArticleVo bean);
	// 공지사항 수정
	void update(AdminArticleVo bean);
	// 공지사항 삭제
	void delete(AdminArticleVo bean);
}
