package com.bit.companion.service.order;

import org.springframework.ui.Model;

import com.bit.companion.model.entity.order.OrderVo;

public interface OrderService {

	void list(Model model,int product_id);
	void OrderInfo_Detail(OrderVo orderVo);
}
