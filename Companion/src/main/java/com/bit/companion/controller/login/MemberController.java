package com.bit.companion.controller.login;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
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
	JavaMailSenderImpl mailSender;
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/login/memberadd")
	public String list(Model model){
		return "login/memberadd";
	}
	
	@ResponseBody
	@RequestMapping(value="/login/emailchk",method=RequestMethod.POST)
	public String mailChk(String member_email){

		String randomMsg=randomMsg();
		
		String setfrom = "bitcompanion@gmail.com";
		String tomail=member_email;
		String title="인증 이메일";
		String c="";
		c+=System.getProperty("line.separator");
		c+=System.getProperty("line.separator");
		c+="인증번호는 "+randomMsg+" 입니다.";
		c+=System.getProperty("line.separator");
		c+=System.getProperty("line.separator");
		final String content =c;
		
		try {
			MimeMessage msg=mailSender.createMimeMessage();
			MimeMessageHelper msgHelper=new MimeMessageHelper(msg,true,"utf-8");
			
			msgHelper.setFrom(setfrom);
			msgHelper.setTo(tomail);
			msgHelper.setSubject(title);
			msgHelper.setText(content);
			
			mailSender.send(msg);
		}catch(Exception e) {
			System.out.println(e);
		}
		return randomMsg;
	}
	
	@ResponseBody
	@RequestMapping(value="/login/idchk",method=RequestMethod.POST)
	public int idChk(String member_id) {
		int result=memberService.idChk(member_id);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/login/emailoverlapchk",method=RequestMethod.POST)
	public int emailChk(String member_email) {
		int result=memberService.emailChk(member_email);
		return result;
	}
	
	@RequestMapping(value="/login/memberadd",method=RequestMethod.POST)
	public String memberadd(@ModelAttribute MemberVo bean) {
		memberService.insert(bean);
		return "redirect:/";
	}
	
	/* 난수 만드는 method */
	public static String randomMsg() {
		String s="";
		for(int i=0; i<6; i++) {
			int r=(int)(Math.random()*9+1);
			s+=r;
		}
		return s;
	}
}
