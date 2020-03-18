package com.bit.companion.model.notice;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.common.Pagination;
import com.bit.companion.model.entity.notice.NoticeVo;

@Repository
public class NoticeDaoImpl implements NoticeDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<NoticeVo> selectAll(Pagination pagination) throws SQLException {
		return sqlSession.selectList("notice.selectAll",pagination);
	}

	@Override
	public int selectTotal() throws SQLException{
		return sqlSession.selectOne("notice.selectTotal");
	}

	@Override
	public NoticeVo selectOne(int article_id) throws SQLException {
		return sqlSession.selectOne("notice.selectOne",article_id);
	}

	@Override
	public void updateCount(int article_id) throws SQLException {
		sqlSession.selectOne("notice.updateCount",article_id);
	}

}
