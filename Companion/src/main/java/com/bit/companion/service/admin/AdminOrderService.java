package com.bit.companion.service.admin;

import org.springframework.ui.Model;

public interface AdminOrderService {
	void list(Model model);

	void detail(Model model, int order_id);
}
