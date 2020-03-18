package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.admin.AdminCategoryVo;
import com.bit.companion.model.entity.admin.AdminProductVo;

public interface AdminProductDao {
	
	// product add page category list
	List<AdminCategoryVo> selectCategory() throws SQLException;

	// product add 
	void insertOne(AdminProductVo bean) throws SQLException;
	
	// product list
	List<AdminProductVo> selectAll() throws SQLException;
	
	// product detail
	AdminProductVo selectOne(int product_id) throws SQLException;
}
