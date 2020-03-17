package com.bit.companion.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.companion.service.admin.AdminProductService;


@Controller
@RequestMapping(value = "/admin/")
public class AdminProductController {

	private static final Logger logger=LoggerFactory.getLogger(AdminNoticeController.class);
	
	@Autowired
	AdminProductService adminProductService;
	
	// ��ǰ �Է� ������
	@RequestMapping(value = "testproductadd", method = RequestMethod.GET)
	public String productAdd(Model model) {
		logger.info("get product add");
	
		 adminProductService.category(model);
		 
		 return "admin/testadminhome";
	}
}
