package com.bit.companion.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.service.admin.AdminOrderService;

@Controller
@RequestMapping(value = "/admin/")
public class AdminOrderController {
	private static final Logger log=LoggerFactory.getLogger(AdminOrderController.class);
	
	@Autowired
	AdminOrderService adminOrderService;
	
	@RequestMapping(value = "order_list", method = RequestMethod.GET)
	public String orderList(Model model) {
		adminOrderService.list(model);
		return "admin/order_list";
	}
	
	@RequestMapping(value = "order_detail", method = RequestMethod.GET)
	public String memberDetail(Model model, @RequestParam int order_id ) {
		log.info("get member datail");
		
		adminOrderService.detail(model, order_id);
		return "admin/order_detail";
	}
}
