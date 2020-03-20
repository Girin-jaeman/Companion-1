package com.bit.companion.controller.hotel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/hotel")
public class InformationCareController {
	
	@RequestMapping(value = {"/infocare","/infocare/"}, method=RequestMethod.GET)
	public String reservation() {return "hotel/information_care";}
}
