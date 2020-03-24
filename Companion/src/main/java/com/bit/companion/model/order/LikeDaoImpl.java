package com.bit.companion.model.order;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.order.LikeVo;

@Repository
public class LikeDaoImpl implements LikeDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<LikeVo> likeTest() throws SQLException {
		
		return sqlSession.selectList("like.likeTest");
	}

	@Override
	public void likeInsert(LikeVo likeVo) throws SQLException {
		sqlSession.insert("like.likeInsert",likeVo);
		
	}







}
