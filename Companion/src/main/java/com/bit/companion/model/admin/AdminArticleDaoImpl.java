package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.common.Pagination;
import com.bit.companion.common.Search;
import com.bit.companion.model.entity.admin.AdminArticleVo;

@Repository
public class AdminNoticeDaoImpl implements AdminNoticeDao {
	Logger logger=LoggerFactory.getLogger(getClass());
	
	@Autowired
	SqlSession sqlSession;
	
	// notice list - selectAll
	@Override
	public List<AdminArticleVo> selectAll(Search search) throws SQLException {
		return sqlSession.selectList("adminNotice.selectAll",search);
	}

	// notice detail - selectOne
	@Override
	public AdminArticleVo selectOne(int article_id) throws SQLException {
		return sqlSession.selectOne("adminNotice.selectOne",article_id);
	}
	
	// notice add - insertOne
	@Override
	public void insertOne(AdminArticleVo bean) throws SQLException {
		sqlSession.insert("adminNotice.insertOne",bean);
	}

	// notice edit - updateOne
	@Override
	public int updateOne(AdminArticleVo bean) throws SQLException {
		return sqlSession.update("adminNotice.updateOne",bean);
	}

	// notice delete - deleteOne
	@Override
	public int deleteOne(int article_id) throws SQLException {
		return sqlSession.delete("adminNotice.deleteOne",article_id);
	}

	// notice total - selectTotal
	@Override
	public int selectTotal(Search search) throws SQLException {
		return sqlSession.selectOne("adminNotice.selectTotal", search);
	}

}
