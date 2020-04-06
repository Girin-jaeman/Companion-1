package com.bit.companion.model.order;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.order.OrderVo;

import net.sf.json.JSONArray;

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
		System.out.println("카트 옵션");
		System.out.println(orderVo.getCart_option());
		System.out.println("카트 갯수");
		System.out.println(orderVo.getCart_quantity());
		
		
		
		sqlSession.insert("order.OrderProductPurchase",orderVo);
		sqlSession.insert("order.OrderDetailInsert",orderVo);
		sqlSession.insert("order.OrderPaymentInsert",orderVo);
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
		
		System.out.println("OrderCartAdd 실행중...");
		System.out.println(orderVo.getCart_option());
		System.out.println(orderVo.getCart_quantity());
		System.out.println(orderVo.getMember_id());
		System.out.println(orderVo.getProduct_id());
		
		//cart table에 
		sqlSession.insert("order.OrderCartAdd",orderVo);
		
	}
	
//	장바구니 상품 주문 
	@Override 
	public int CartOrderPurchase(List<OrderVo> orderVo) throws SQLException {
		sqlSession.insert("order.CartOrderPurchase",orderVo);
		sqlSession.insert("order.CartDetailInsert",orderVo);
		sqlSession.insert("order.CartPaymentInsert",orderVo);
		return sqlSession.insert("order.CartDeliveryInsert",orderVo);
		
		
	}

}
