package com.bit.companion.controller.hotel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.companion.model.entity.hotel.HotelVo;
import com.bit.companion.service.hotel.HotelService;

@Controller
@RequestMapping(value = "/hotel")
public class HotelController {
	
	@Autowired
	HotelService hotelService;
	
	@RequestMapping(value = "/reservation", method=RequestMethod.GET)
	public String reservation() {return "hotel/hotel_reservation";}
	
	@RequestMapping(value = "/reservation", method=RequestMethod.POST)
	public String reservation(@ModelAttribute HotelVo bean) {
//		hotelService.insert(bean);
		return "redirect:/hotel/reservation";
	}
}
