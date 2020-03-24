package com.bit.companion.service.order;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.order.OrderQuestionVo;

public interface OrderQuestionService {
	void registReply(OrderQuestionVo orderQuestionVo) throws SQLException;
	List<OrderQuestionVo> replyList(int product_id) throws SQLException;
	
}
