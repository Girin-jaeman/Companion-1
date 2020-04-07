package com.bit.companion.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin/")
public class AdminOrderController {
	private static final Logger log=LoggerFactory.getLogger(AdminOrderController.class);
	
	@RequestMapping(value = "order_list", method = RequestMethod.GET)
	public String orderList() {
		return "admin/order_list";
	}
}
