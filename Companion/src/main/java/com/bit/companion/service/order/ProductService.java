package com.bit.companion.service.order;

import org.springframework.ui.Model;

public interface ProductService {

	void list(Model model);
	void category(Model model,int category_id);
	void detail(Model model,int product_id);
}