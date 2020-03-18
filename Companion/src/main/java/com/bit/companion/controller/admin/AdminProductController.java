package com.bit.companion.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.model.entity.admin.AdminProductVo;
import com.bit.companion.service.admin.AdminProductService;


@Controller
@RequestMapping(value = "/admin/")
public class AdminProductController {

	private static final Logger logger=LoggerFactory.getLogger(AdminNoticeController.class);
	
	@Autowired
	AdminProductService adminProductService;
	
	// product add page category list - get
	@RequestMapping(value = "testproductadd", method = RequestMethod.GET)
	public String productAdd(Model model) {
		logger.info("get product add");
	
		 adminProductService.category(model);
		 return "admin/testproductadd";
	}
	
	// prodcut add - post
	@RequestMapping(value = "testproductadd", method = RequestMethod.POST)
	public String productAdd(@ModelAttribute AdminProductVo bean) {
		logger.info("post product add");
		
		adminProductService.insert(bean);
		return "redirect:testadminhome";
	}
	
	// product list - get
	@RequestMapping(value = "testproductlist", method = RequestMethod.GET)
	public String productList(Model model) {
		logger.info("get product list");
		
		adminProductService.list(model);
		return "admin/testproductlist";
	}
	
	//product detail - get
	@RequestMapping(value = "testproductdetail/{idx}", method = RequestMethod.GET)
	public String productDetail(Model model, @PathVariable("idx") int product_id) {
		logger.info("get product detail");
		
		adminProductService.detail(model, product_id);
		return "admin/testproductdetail";
	}
	
	// product edit page category list - get
	@RequestMapping(value = "testproductedit/{idx}", method = RequestMethod.GET)
	public String productEdit(Model model, @PathVariable("idx") int product_id) {
		logger.info("get product add");
	
		adminProductService.category(model);
		adminProductService.detail(model, product_id);
		 return "admin/testproductedit";
	}
}
