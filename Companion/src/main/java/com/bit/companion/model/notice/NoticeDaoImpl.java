package com.bit.companion.model.notice;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.notice.NoticeVo;

@Repository
public class NoticeDaoImpl implements NoticeDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<NoticeVo> selectAll() throws SQLException {
		return sqlSession.selectList("notice.selectAll");
	}

	@Override
	public int selectTotal() {
		return sqlSession.selectOne("notice.selectTotal");
	}

	@Override
	public NoticeVo selectOne(int ntc_id) throws SQLException {
		return sqlSession.selectOne("notice.selectOne",ntc_id);
	}

}
