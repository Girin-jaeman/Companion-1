package com.bit.companion.controller.hotel;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.companion.model.entity.hotel.HotelVo;
import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.service.hotel.HotelService;

@Controller
@RequestMapping(value = "/hotel")
public class HotelController {
	private static final Logger logger = LoggerFactory.getLogger(HotelController.class);
	@Autowired
	HotelService hotelService;
	
	@RequestMapping(value = "/reservation", method=RequestMethod.GET)
	public String reservation() {return "hotel/hotel_reservation";}
	
	@RequestMapping(value = "/reservation", method=RequestMethod.POST)
	public String reservation(@ModelAttribute HotelVo bean, HttpSession session ) {
		MemberVo memberVo=(MemberVo) session.getAttribute("memberVo");
		bean.setMember_id(memberVo.getMember_id());
		logger.debug("member_id 확인");
		logger.debug(bean.getMember_id());
		hotelService.insert(bean);
		return "redirect:/hotel/reservation";
	}
}
