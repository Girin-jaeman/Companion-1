package com.bit.companion.controller.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.service.order.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
//	@RequestMapping(value = "/order/productMain")
//	public String productMain(Model model) {
//		productService.list(model);
//		return "order/productMain";
//	}
	
	@RequestMapping(value = "/order/productMain",method = RequestMethod.GET)
	public String productcategory(Model model,@RequestParam("c") int category_id) {
		productService.category(model,category_id);
		return "order/productMain";
	}
	
	@RequestMapping(value = "/order/productDetail/{idx}")
	public String productDetail(Model model,@PathVariable("idx") int product_id) {
		productService.detail(model, product_id);
		return "order/productDetail";
	}
	
	@RequestMapping(value = "/order/productDetail/orderQuestion")
	public String orderQuestion(Model model) {
		return "order/orderQuestion";
	}
	
	
	
	
	/*
	 * @RequestMapping(value = "/order/productDetail/{idx}/orderQuestion") public
	 * String orderQuestion(Model model,@PathVariable("idx") int product_id) {
	 * productService.detail(model, product_id); return "order/orderQuestion"; }
	 */
}