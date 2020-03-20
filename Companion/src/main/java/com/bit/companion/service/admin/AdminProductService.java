package com.bit.companion.service.admin;

import org.springframework.ui.Model;

import com.bit.companion.model.entity.admin.AdminProductVo;

public interface AdminProductService {

	// product add page category list
	void category(Model model);
	
	// product add
	void insert(AdminProductVo bean);
	
	// product list
	void list(Model model);
	
	// product detail
	void detail(Model model,int product_id);

	// product edit
	void update(AdminProductVo bean);
	
	//product delete
	void delete(int product_id);
}
