package com.bit.companion.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.service.admin.AdminReservationService;

@Controller
@RequestMapping(value = "/admin/")
public class AdminReservationController {

	private static final Logger log=LoggerFactory.getLogger(AdminReservationController.class);
	
	@Autowired
	AdminReservationService adminReservationService;
	
	public String reservationList(Model model) {
		log.info("get reservation list");
		adminReservationService.list(model);
		return "admin/reservation_list";
	}
	@RequestMapping
	public String reservationDetail(Model model, @RequestParam String member_id) {
		log.info("get reservation detail");
		
		adminReservationService.detail(model, member_id);
		return "admin/reservation_detail";
	}
}
