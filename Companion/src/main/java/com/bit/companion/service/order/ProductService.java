package com.bit.companion.service.order;

import org.springframework.ui.Model;

public interface ProductService {

	void list(Model model);
	void category(Model model,int category_id);
	void detail(Model model,int product_id);
	void productReview(Model model, int product_id);
	void Alignment(Model model,int category_id);
	void AlignmentOrderBySelling(Model model,int category_id);
	void AlignmentOrderByLowPrice(Model model,int category_id);
	void AlignmentOrderByHighPrice(Model model,int category_id);
	void AlignmentOrderByDate(Model model,int category_id);
}