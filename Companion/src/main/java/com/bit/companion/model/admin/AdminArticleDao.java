package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.common.Search;
import com.bit.companion.model.entity.admin.AdminArticleVo;

public interface AdminArticleDao {

	// notice list
	List<AdminArticleVo> selectAll(Search search) throws SQLException;
	
	// notice detail
	AdminArticleVo selectOne(AdminArticleVo bean) throws SQLException;;
	
	// notice add
	void insertOne(AdminArticleVo bean) throws SQLException;
	
	// notice edit
	int updateOne(AdminArticleVo bean) throws SQLException;
	
	// notice delete
	int deleteOne(AdminArticleVo bean) throws SQLException;

	// notice total
	int selectTotal(Search search) throws SQLException;;
	
}
