package com.bit.companion.controller.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.companion.model.entity.login.MemberVo;
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
	
	@ResponseBody
	@RequestMapping(value="/mypage/pwchange",method=RequestMethod.POST)
	public int pwChange(String pw_change,String id_chk,HttpSession session) {
		if(mypageService.pwChange(pw_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_pw(pw_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.pwChange(pw_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/telchange",method=RequestMethod.POST)
	public int telChange(String tel_change,String id_chk,HttpSession session) {
		if(mypageService.telChange(tel_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_tel(tel_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.telChange(tel_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/phonechange",method=RequestMethod.POST)
	public int phoneChange(String phone_change,String id_chk,HttpSession session) {
		if(mypageService.phoneChange(phone_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_phone(phone_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.phoneChange(phone_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/emailchange",method=RequestMethod.POST)
	public int emailChange(String email_change,String id_chk,HttpSession session) {
		if(mypageService.emailChange(email_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_email(email_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.emailChange(email_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/addrchange",method=RequestMethod.POST)
	public int addrChange(String addr1_change,String addr2_change,String addr3_change,String id_chk,HttpSession session) {
		if(mypageService.addrChange(addr1_change,addr2_change,addr3_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_addr1(addr1_change);
			memberVo.setMember_addr2(addr2_change);
			memberVo.setMember_addr3(addr3_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.addrChange(addr1_change,addr2_change,addr3_change,id_chk);
	}
	
}
