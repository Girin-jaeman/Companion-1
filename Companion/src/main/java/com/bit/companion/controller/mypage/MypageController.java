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
}
