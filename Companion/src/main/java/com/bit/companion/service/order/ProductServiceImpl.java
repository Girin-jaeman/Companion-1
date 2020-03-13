package com.bit.companion.service.order;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.model.entity.order.ProductVo;
import com.bit.companion.model.order.ProductDao;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductDao productDao;
	
	@Override
	public void list(Model model) {
		
		List<ProductVo> list;
		try {
			list = productDao.ProductSelectAll();
			model.addAttribute("productlist",list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void detail(Model model, String prdt_id) {
		try {
			productDao.productDetailOne(prdt_id);
			model.addAttribute("productDetailOne",productDao.productDetailOne(prdt_id));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}


}
