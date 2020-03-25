package com.bit.companion.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PolicyPrivacyController {

	@RequestMapping(value = "policy/privacy")
	public String privacy() {
		return "common/policyprivacy";
	}
}
