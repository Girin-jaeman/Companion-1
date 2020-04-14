package com.bit.companion.service.admin;

import org.springframework.ui.Model;

import com.bit.companion.model.entity.admin.AdminMemberViewVo;

public interface AdminMemberService {

	// member list
	void list(Model model);
	
	// member detail
	void detail(Model model, AdminMemberViewVo bean);

	// member update
	void update(AdminMemberViewVo bean);
}
