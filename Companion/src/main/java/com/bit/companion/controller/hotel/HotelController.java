package com.bit.companion.controller.hotel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.companion.service.hotel.HotelService;

@Controller
public class HotelController {
	
	@Autowired
	HotelService hotelService;
	
	@RequestMapping(value = "/hotel/list")
	public String list(Model model) {
		hotelService.list(model);
		return "hotel/hotel";
	}
}
