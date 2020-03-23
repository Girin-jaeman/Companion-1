package com.bit.companion.service.order;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.companion.model.entity.order.OrderQuestionVo;
import com.bit.companion.model.order.QuestionDao;

@Service
public class OrderQuestionServiceImpl implements OrderQuestionService {

		@Autowired
		QuestionDao questionDao;
	
	@Override
	public void registReply(OrderQuestionVo orderQuestionVo) throws SQLException {
		
		questionDao.registReply(orderQuestionVo);
			
	}

	@Override
	public List<OrderQuestionVo> replyList(int product_id) throws SQLException {
		
		return questionDao.replyList(product_id); 
	}

}
