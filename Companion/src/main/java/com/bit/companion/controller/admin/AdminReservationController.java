package com.bit.companion.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.common.Search;
import com.bit.companion.service.admin.AdminReservationService;

@Controller
@RequestMapping(value = "/admin/")
public class AdminReservationController {

	private static final Logger log=LoggerFactory.getLogger(AdminReservationController.class);
	
	@Autowired
	AdminReservationService adminReservationService;
	
	// reservation list
	@RequestMapping(value="reservation_list", method=RequestMethod.GET)
	public String reservationList(Model model
			, @RequestParam(required=false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range
			, @RequestParam(required = false, defaultValue = "all") String searchType
			, @RequestParam(required = false) String keyword
			, @ModelAttribute("search") Search search) {
		log.info("get reservation list");
		adminReservationService.service(model);
		adminReservationService.list(model, page, range, searchType, keyword, search);
		return "admin/reservation_list";
	}
	
	// reservation detail
	@RequestMapping(value="reservation_detail", method = RequestMethod.GET)
	public String reservationDetail(Model model, @RequestParam int reserve_id) {
		log.info("get reservation detail");
		
		adminReservationService.detail(model, reserve_id);
		return "admin/reservation_detail";
	}
	
	
}
