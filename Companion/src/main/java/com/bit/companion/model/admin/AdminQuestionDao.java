package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.admin.AdminQuestionVo;

public interface AdminQuestionDao {

	// question list
	List<AdminQuestionVo> selectAll() throws SQLException;
	
	// question total
	int selectTotal() throws SQLException;
	
	// question detail
	AdminQuestionVo selectOne(AdminQuestionVo bean) throws SQLException;

	// question type
	List<AdminQuestionVo> selectType()throws SQLException;

	// question edit
	int updateOne(AdminQuestionVo bean) throws SQLException;

	// question delete
	int deleteOne(AdminQuestionVo bean) throws SQLException;
}
