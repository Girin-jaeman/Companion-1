package com.bit.companion.controller.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.companion.model.entity.login.LoginVo;
import com.bit.companion.service.login.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@RequestMapping("/login")
	public String login() {
		return "login/login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String loginChk(@ModelAttribute LoginVo bean,HttpSession session) {
		String result="home";
		boolean loginChk=loginService.loginChk(bean,session);
		if(loginChk) {
			session.setAttribute("loginChk", loginChk);
		}else {
			session.setAttribute("loginChk", loginChk);
			result="login/login";
		}
		return result;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		loginService.logout(session);
		return "home";
	}
}
