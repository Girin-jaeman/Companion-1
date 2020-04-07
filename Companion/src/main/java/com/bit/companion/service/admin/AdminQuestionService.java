package com.bit.companion.service.admin;

import org.springframework.ui.Model;

import com.bit.companion.model.entity.admin.AdminQuestionVo;

public interface AdminQuestionService {

	// question list
	void list(Model model);

	// question detail
	void detail(Model model, AdminQuestionVo bean);

	// question type
	void type(Model model);
	
	// question edit
	void update(AdminQuestionVo bean);

	// question delete
	void delete(AdminQuestionVo bean);

}
