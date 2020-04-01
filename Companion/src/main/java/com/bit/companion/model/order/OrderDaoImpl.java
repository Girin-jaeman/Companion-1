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
	
//	상품 목록 출력.
	@Override
	public List<OrderVo> OrderSelectAll() throws SQLException{
		
		return sqlSession.selectList("order.OrderSelectAll");
		/* return sqlSession.selectList("order.selectAll"); */
		
	}

	
//	상품 주문 하기. 테이블 
	@Override
	public void OrderInfo_Details(OrderVo orderVo) throws SQLException {
		// order table에 
		sqlSession.insert("order.OrderProductPurchase",orderVo);

		//order_detail table에
		sqlSession.insert("order.OrderDetailInsert",orderVo);
		
		//payment table에
		sqlSession.insert("order.OrderPaymentInsert",orderVo);

		//delivery table에
		sqlSession.insert("order.OrderDeliveryInsert",orderVo);
	}


// 상품 하나 주문 하기.
	@Override
	public OrderVo OrderProductPurchaseOne(int product_id) throws SQLException {
		return sqlSession.selectOne("order.OrderProductPurchaseOne",product_id);
	}

// 장바구니에 담기
	@Override
	public void OrderCartAdd(OrderVo orderVo) throws SQLException {
		
		//cart table에 
		sqlSession.insert("order.OrderCartAdd",orderVo);
		
	}
	
	
	
	
	


}
