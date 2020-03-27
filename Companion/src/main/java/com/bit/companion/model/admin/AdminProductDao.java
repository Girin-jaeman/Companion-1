package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.admin.AdminProductViewVo;
import com.bit.companion.common.Search;
import com.bit.companion.model.entity.admin.AdminCategoryVo;
import com.bit.companion.model.entity.admin.AdminProductVo;

public interface AdminProductDao {
	
	//  category list (product add page)
	List<AdminCategoryVo> selectCategory() throws SQLException;
	
	// product list
	List<AdminProductViewVo> selectAll(Search search) throws SQLException;
	
	// product detail
	AdminProductViewVo selectOne(int product_id) throws SQLException;

	// product add 
	void insertOne(AdminProductVo bean) throws SQLException;

	// product edit
	int updateOne(AdminProductVo bean) throws SQLException;

	// product delete
	int deleteOne(int product_id) throws SQLException;

	// product total
	int selectTotal(Search search) throws SQLException;
}
