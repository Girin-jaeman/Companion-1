package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.admin.AdminCategoryVo;

public interface AdminProductDao {
	
	// product add category
	List<AdminCategoryVo> selectCategory() throws SQLException;

}
