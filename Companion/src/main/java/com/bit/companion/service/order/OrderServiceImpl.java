package com.bit.companion.service.order;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.model.entity.order.OrderVo;
import com.bit.companion.model.order.OrderDao;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderDao orderDao;

	@Override
	public void list(Model model) {

		List<OrderVo> list;
		try {
			list = orderDao.selectAll();
			model.addAttribute("list",list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
	
	
	
	
	
	
}
