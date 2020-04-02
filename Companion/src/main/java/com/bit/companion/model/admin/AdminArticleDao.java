package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.common.Search;
import com.bit.companion.model.entity.admin.AdminArticleVo;

public interface AdminArticleDao {

	// article list
	List<AdminArticleVo> selectAll(Search search) throws SQLException;
	
	// article detail
	AdminArticleVo selectOne(AdminArticleVo bean) throws SQLException;;
	
	// article add
	void insertOne(AdminArticleVo bean) throws SQLException;
	
	// article edit
	int updateOne(AdminArticleVo bean) throws SQLException;
	
	// article delete
	int deleteOne(AdminArticleVo bean) throws SQLException;

	// article total
	int selectTotal(Search search) throws SQLException;;
	
}
