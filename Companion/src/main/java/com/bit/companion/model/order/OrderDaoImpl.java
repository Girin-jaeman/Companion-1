package com.bit.companion.model.order;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.order.OrderVo;

@Repository
public class OrderDaoImpl implements OrderDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<OrderVo> OrderSelectAll() throws SQLException{
		
		return sqlSession.selectList("order.OrderSelectAll");
		/* return sqlSession.selectList("order.selectAll"); */
		
	}

}
