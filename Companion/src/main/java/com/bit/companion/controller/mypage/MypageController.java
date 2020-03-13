package com.bit.companion.controller.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.companion.service.mypage.MypageService;

@Controller
public class MypageController {
	
	@Autowired
	MypageService mypageService;

	@RequestMapping("/mypagechk")
	public String mypageChk() {
		return "mypage/mypagechk";
	}
	
	@RequestMapping(value="/mypagechk",method=RequestMethod.POST)
	public String loginChk(HttpSession session) {
		return "mypage/mypage";
	}
	
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage/mypage";
	}
}
