package com.bit.companion.controller.hotel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/hotel")
public class PreviewRoomController {

	@RequestMapping(value = {"/preroom","/preroom/"}, method=RequestMethod.GET)
	public String reservation() {return "hotel/preview_room";}
}
