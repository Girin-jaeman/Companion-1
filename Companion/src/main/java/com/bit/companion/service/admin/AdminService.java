package com.bit.companion.service.admin;

import org.springframework.ui.Model;

import com.bit.companion.model.entity.admin.AdminNoticeVo;

public interface AdminService {

	void list(Model model);
	void insert(AdminNoticeVo bean);
}
