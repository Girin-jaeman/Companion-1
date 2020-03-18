package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.admin.AdminArticleVo;

public interface AdminNoticeDao {

	// notice list
	List<AdminArticleVo> selectAll() throws SQLException;
	// notice detail
	AdminArticleVo selectOne(int article_id) throws SQLException;;
	// notice add
	void insertOne(AdminArticleVo bean) throws SQLException;
	// notice edit
	int updateOne(AdminArticleVo bean) throws SQLException;
	// notice delete
	int deleteOne(AdminArticleVo bean) throws SQLException;
}
