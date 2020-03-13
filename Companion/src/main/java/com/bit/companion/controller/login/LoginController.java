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
	
//	로그인하는 화면
	@RequestMapping("/login")
	public String login() {
		return "login/login";
	}
	
//	로그인 처리하는 작업
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String loginChk(@ModelAttribute LoginVo bean,HttpSession session) {
		String result="home";
		boolean loginChk=loginService.loginChk(bean,session);
//		성공시
		if(loginChk) {
			session.setAttribute("loginChk", loginChk);
//		실패시
		}else {
			session.setAttribute("loginChk", loginChk);
			result="login/login";
		}
		return result;
	}
	
//	로그아웃 처리하는 작업
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		loginService.logout(session);
		return "home";
	}
}
