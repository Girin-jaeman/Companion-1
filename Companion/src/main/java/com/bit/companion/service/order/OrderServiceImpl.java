package com.bit.companion.service.order;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.model.entity.order.OrderVo;
import com.bit.companion.model.order.OrderDao;

import net.sf.json.JSONArray;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderDao orderDao;

	
	//단일 상품 구매 할 때.
	@Override
	public void list(Model model,int product_id) {

		try {
			orderDao.OrderProductPurchaseOne(product_id);
			model.addAttribute("orderProductPurchaseOne",orderDao.OrderProductPurchaseOne(product_id));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	
//	상품 구매 
	@Override
	public void OrderInfo_Detail(OrderVo orderVo) {

		try {
			orderDao.OrderInfo_Details(orderVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

//  장바구니에 상품 담기.
	@Override
	public void insertCart(Model model, OrderVo orderVo) {
 
		try {
			orderDao.OrderCartAdd(orderVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	@Override
	public int insert_test(List<OrderVo> orderVo) throws SQLException {
		
		return orderDao.CartOrderPurchase(orderVo);
	}
}
