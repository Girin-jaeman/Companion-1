package com.bit.companion.model.order;

import java.sql.SQLException; 
import java.util.List;

import com.bit.companion.model.entity.order.ProductVo;

public interface ProductDao {

	List<ProductVo> ProductSelectAll() throws SQLException;
	ProductVo productDetailOne(String prdt_id) throws SQLException;
}

