package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.admin.AdminCategoryVo;

public interface AdminProductDao {
	
	//카테고리
	List<AdminCategoryVo> selectCategory() throws SQLException;

}
