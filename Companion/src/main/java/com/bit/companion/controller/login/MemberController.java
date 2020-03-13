package com.bit.companion.controller.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.service.login.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
//	회원가입시키는 화면
	@RequestMapping("/login/memberadd")
	public String list(Model model){
		return "login/memberadd";
	}
	
//	회원정보를 받아서 db에 넣는 작업
	@RequestMapping(value="/login/memberadd",method=RequestMethod.POST)
	public String memberadd(@ModelAttribute MemberVo bean) {
		memberService.insert(bean);
		return "redirect:memberadd";
	}
}
