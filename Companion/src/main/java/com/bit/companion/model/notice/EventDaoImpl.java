package com.bit.companion.model.notice;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.common.Pagination;
import com.bit.companion.model.entity.notice.EventVo;

@Repository
public class EventDaoImpl implements EventDao {
	Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int selectTotal() throws SQLException {
		return sqlSession.selectOne("event.selectTotal");
	}

	@Override
	public List<EventVo> selectAll(Pagination pagination) throws SQLException {
		return sqlSession.selectList("event.selectAll",pagination);
	}

	@Override
	public EventVo selectOne(int article_id) throws SQLException {
		return sqlSession.selectOne("event.selectOne",article_id);
	}

	@Override
	public void updateCount(int article_id) throws SQLException {
		sqlSession.selectOne("event.updateCount",article_id);
	}

}
