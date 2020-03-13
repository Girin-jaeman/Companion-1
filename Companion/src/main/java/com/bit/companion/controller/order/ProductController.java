package com.bit.companion.controller.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.companion.service.order.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	
	@RequestMapping(value = "/order/productMain")
	public String productMain(Model model) {
		productService.list(model);
		return "order/productMain";
	}
	
	@RequestMapping(value = "/order/productDetail/{idx}")
	public String productDetail(Model model,@PathVariable("idx") String prdt_id) {
		productService.detail(model, prdt_id);
		return "order/productDetail";
	}
	
	
}
