package com.bit.companion.model.notice;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.common.Pagination;
import com.bit.companion.model.entity.notice.FAQVo;

@Repository
public class FAQDaoImpl implements FAQDao {
	Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int selectTotal() throws SQLException {
		return sqlSession.selectOne("faq.selectTotal");
	}

	@Override
	public List<FAQVo> selectAll(Pagination pagination) throws SQLException {
		return sqlSession.selectList("faq.selectAll",pagination);
	}

}
