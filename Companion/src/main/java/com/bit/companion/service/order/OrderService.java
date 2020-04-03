package com.bit.companion.service.order;

import java.sql.SQLException;
import java.util.List;

import org.springframework.ui.Model;

import com.bit.companion.model.entity.order.OrderVo;

import net.sf.json.JSONArray;

public interface OrderService {

	void list(Model model,int product_id);
	void OrderInfo_Detail(OrderVo orderVo);
	void insertCart(Model model,OrderVo orderVo);
	
	
	int insert_test(List<OrderVo> orderVo) throws SQLException;
	
}
 