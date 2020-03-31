package com.bit.companion.model.order;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.order.OrderVo;

public interface OrderDao {

	List<OrderVo> OrderSelectAll() throws SQLException;
	void OrderInfo_Details(OrderVo orderVo) throws SQLException;
	OrderVo OrderProductPurchaseOne(int product_id) throws SQLException;
	
	
	void OrderCartAdd(OrderVo orderVo) throws SQLException;
	
}
