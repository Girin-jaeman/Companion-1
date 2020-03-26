package com.bit.companion.service.admin;

import org.springframework.ui.Model;

import com.bit.companion.common.Search;
import com.bit.companion.model.entity.admin.AdminProductVo;

public interface AdminProductService {

	// category list (product add page)
	void category(Model model);
	
	// product list
	void list(Model model, int page, int range, String searchType, String keyword, Search search);
	
	// product detail
	void detail(Model model,int product_id);
	
	// product add
	void insert(AdminProductVo bean);

	// product edit
	void update(AdminProductVo bean);
	
	// product delete
	void delete(int product_id);
	
}
