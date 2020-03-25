package com.bit.companion.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TermsOfServiceController {
	
	@RequestMapping(value = "user/terms")
	public String home() {
		return "common/termsofservice";
	}
}
