package com.bit.companion.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.companion.service.admin.AdminNoticeService;

@Controller
@RequestMapping(value = "/admin/")
public class AdminProductController {

	private static final Logger logger=LoggerFactory.getLogger(AdminNoticeController.class);
	
	@Autowired
	AdminNoticeService adminService;
	
	// ��ǰ �Է� ������
	@RequestMapping(value = "testproductadd", method = RequestMethod.GET)
	public String productAdd() {
		logger.info("get product add");
		return "admin/testproductadd";
	}
	
	// ��ǰ ��� ������
	@RequestMapping(value = "/goods/register", method = RequestMethod.GET)
	public void getGoodsRegister(Model model) throws Exception {
	 logger.info("get goods register");
	 
	 List<CategoryVO> category = null;
	 category = adminService.category();
	 model.addAttribute("category", JSONArray.fromObject(category));
	}
}
