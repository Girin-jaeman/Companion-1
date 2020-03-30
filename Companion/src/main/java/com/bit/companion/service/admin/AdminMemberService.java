package com.bit.companion.service.admin;

import org.springframework.ui.Model;

public interface AdminMemberService {

	// member list
	void list(Model model);
	
	// member detail
	void detail(Model model, String member_id);
}
