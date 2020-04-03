package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.common.Search;
import com.bit.companion.model.entity.admin.AdminArticleVo;

public interface AdminQuestionDao {

	// question list
	List<AdminArticleVo> selectQuestion(Search search) throws SQLException;
	
	// answer list
	List<AdminArticleVo> selectAnswer(Search search) throws SQLException;

	// question list total
	int questionTotal(Search search) throws SQLException;
	
	// answer list total
	int answerTotal(Search search) throws SQLException;
}
