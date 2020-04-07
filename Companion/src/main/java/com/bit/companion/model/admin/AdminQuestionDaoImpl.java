package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.admin.AdminQuestionVo;

@Repository
public class AdminQuestionDaoImpl implements AdminQuestionDao{

	@Autowired
	SqlSession sqlSession;

	// question list
	@Override
	public List<AdminQuestionVo> selectAll() throws SQLException {
		return sqlSession.selectList("adminQuestion.selectAll");
	}
	
	// question total
	public int selectTotal() throws SQLException{
		return sqlSession.selectOne("adminArticle.selectTotal");
	}
	
	// question detail
	@Override
	public AdminQuestionVo selectOne(AdminQuestionVo bean) throws SQLException {
		return sqlSession.selectOne("adminQuestion.selectOne", bean);
	}

	// question type
	@Override
	public List<AdminQuestionVo> selectType() throws SQLException {
		return sqlSession.selectList("adminQuestion.selectType");
	}

	// question edit
	@Override
	public int updateOne(AdminQuestionVo bean) throws SQLException {
		return sqlSession.update("adminQuestion.updateOne", bean);
	}

	// question delete
	@Override
	public int deleteOne(AdminQuestionVo bean) throws SQLException {
		return sqlSession.delete("adminQuestion.deleteOne", bean);
	}
	
	
	
}
