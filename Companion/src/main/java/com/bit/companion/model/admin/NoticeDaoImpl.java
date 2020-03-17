package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.admin.AdminArticleVo;

@Repository
public class NoticeDaoImpl implements NoticeDao {
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired
	SqlSession sqlSession;
	
	// 공지사항 리스트 - selectAll
	@Override
	public List<AdminArticleVo> selectAll() throws SQLException {
		return sqlSession.selectList("adminNotice.selectAll");
	}

	// 공지사항 상세 - selectOne
	@Override
	public AdminArticleVo selectOne(int article_id) throws SQLException {
		return sqlSession.selectOne("adminNotice.selectOne",article_id);
	}
	
	// 공지사항 입력 - insertOne
	@Override
	public void insertOne(AdminArticleVo bean) throws SQLException {
		sqlSession.insert("adminNotice.insertOne",bean);
	}

	// 공지사항 수정 - updateOne
	@Override
	public int updateOne(AdminArticleVo bean) throws SQLException {
		return sqlSession.update("adminNotice.updateOne",bean);
	}

	// 공지사항 삭제 - deleteOne
	@Override
	public int deleteOne(AdminArticleVo bean) throws SQLException {
		return sqlSession.delete("adminNotice.deleteOne",bean);
	}

}
