package com.bit.companion.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.companion.service.admin.AdminService;

@Controller
@RequestMapping(value = "/admin/")
public class ProductController {

	private static final Logger log=LoggerFactory.getLogger(NoticeController.class);
	
	@Autowired
	AdminService adminService;
	
	// 상품 입력 페이지
	@RequestMapping(value = "testproductadd", method = RequestMethod.GET)
	public String productAdd() {
		log.info("get product add");
		return "admin/testproductadd";
	}
}
