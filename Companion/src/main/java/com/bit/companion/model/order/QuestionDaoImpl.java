package com.bit.companion.model.order;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.order.OrderQuestionVo;

@Repository
public class QuestionDaoImpl implements QuestionDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void registReply(OrderQuestionVo orderQuestionVo) throws SQLException {
		sqlSession.insert("orderQuestion.registReply",orderQuestionVo);
	}

	@Override
	public List<OrderQuestionVo> replyList(int product_id) throws SQLException {
		
		
		return sqlSession.selectList("orderQuestion.OrderQuestionList",product_id);
	}

}
