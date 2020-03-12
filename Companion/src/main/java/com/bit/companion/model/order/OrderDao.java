package com.bit.companion.model.order;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.order.OrderVo;

public interface OrderDao {

	List<OrderVo> selectAll() throws SQLException;
	
}
