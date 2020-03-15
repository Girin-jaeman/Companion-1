package com.bit.companion.controller.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.service.login.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@RequestMapping("/login/memberadd")
	public String list(Model model){
		return "login/memberadd";
	}
	
	@ResponseBody
	@RequestMapping(value="/login/idchk",method=RequestMethod.POST)
	public int idChk(String member_id) {
		int result=memberService.idChk(member_id);
		return result;
	}
	
	
	@RequestMapping(value="/login/memberadd",method=RequestMethod.POST)
	public String memberadd(@ModelAttribute MemberVo bean) {
		memberService.insert(bean);
		return "redirect:..";
	}
}
