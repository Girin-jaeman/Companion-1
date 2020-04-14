package com.bit.companion.controller.login;

import java.util.ArrayList;
import java.util.HashMap;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.model.entity.login.LoginVo;
import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.service.login.LoginService;
import com.bit.companion.service.login.MemberService;

@Controller
public class LoginController {

	@Autowired
	JavaMailSenderImpl mailSender;
	
	@Autowired
	LoginService loginService;

	@Autowired
	MemberService memberService;

	@RequestMapping("/login")
	public String login(HttpSession session) {
		if(session.getAttribute("findIDResult")!=null) {
			session.removeAttribute("findIDResult");
		}
		if(session.getAttribute("findPWResult")!=null) {
			session.removeAttribute("findPWResult");
		}
		return "login/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginChk(@ModelAttribute LoginVo bean, HttpSession session) {
		
		String result = "redirect:/";
		if(session.getAttribute("memberVo")!=null) {
			return result;
		}
		boolean loginChk = loginService.loginChk(bean, session);
		if (loginChk) {
			session.setAttribute("loginChk", loginChk);
		} else {
			session.setAttribute("loginChk", loginChk);
			result = "login/login";
		}
		return result;
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		/* System.out.println(session.getAttribute("access_Token")); */
		if(session.getAttribute("access_Token")!=null) {
			loginService.kakaoLogout((String)session.getAttribute("access_Token"));
			session.removeAttribute("access_Token");
			if(session.getAttribute("refresh_Token")!=null) {
				session.removeAttribute("refresh_Token");
			}
		}
		loginService.logout(session);
		return "redirect:/";
	}

	@RequestMapping(value = "/login/kakaologin")
	public String kakaoLogin(@RequestParam("code") String code,HttpSession session) {
		if(session.getAttribute("memberVo")!=null) {
			return "redirect:/";
		}
		String access_Token=loginService.getAccessToken(code);
		session.setAttribute("access_Token", access_Token);
		HashMap<String,Object> userInfo=loginService.getUserInfo(access_Token);
		/* System.out.println("login Controller : "+userInfo); */
		String k_email=(String)userInfo.get("k_email");
		/* System.out.println(k_email); */
		
		/*db에서 k_email과 일치하는 정보가 있는지 확인 후. 로그인 or 회원가입시키기 */
		int result=memberService.emailChk(k_email);
		/* System.out.println("emailChk : "+result); */
		if(result!=0) { 
			String member_id=memberService.emailFindId(k_email); 
			String member_pw=memberService.emailFindPw(k_email); 
			String member_name=memberService.emailFindName(k_email); 
			LoginVo bean=new LoginVo();
			bean.setMember_id(member_id); 
			bean.setMember_pw(member_pw);
			bean.setMember_name(member_name); 
			/* System.out.println(bean.toString()); */
			boolean loginChk=loginService.loginChk(bean, session); 
			if(loginChk) {
				session.setAttribute("loginChk", loginChk); 
			} 
		}else {
			session.setAttribute("k_email", k_email);
			return "redirect:memberadd"; 
		} 
		return "redirect:/";
		 
	}
	
	@RequestMapping(value="/login/findID")
	public String findID(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean!=null) {
			return "redirect:/";
		}
		if(session.getAttribute("findIDResult")!=null) {
			session.removeAttribute("findIDResult");
		}
		if(session.getAttribute("findPWResult")!=null) {
			session.removeAttribute("findPWResult");
		}
		return "login/findID";
	}
	
	@RequestMapping(value="/login/findID",method=RequestMethod.POST)
	public String findIDCheck(HttpSession session,String name_check,String phone_check) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean!=null) {
			return "redirect:/";
		}
		int idResult=loginService.findIDCheck(name_check,phone_check);
		if(idResult==0) {
			session.setAttribute("findIDResult", null);
		}else {
			String findID=loginService.findIDresult(name_check,phone_check);
			char[] findIDresult=findID.toCharArray();
			for(int i=0; i<findIDresult.length;i++) {
				if(i<(findIDresult.length-3)) {
					continue;
				}
				findIDresult[i]='*';
			}
			System.out.println("findID 확인 : "+findID);
			findID="";
			for(int i=0;i<findIDresult.length;i++) {
				findID+=findIDresult[i];
			}
			System.out.println("findID 수정 : "+findID);
			session.setAttribute("findIDResult", findID);
		}
		return "login/findIDresult";
	}
	
	@RequestMapping(value="/login/findIDresult")
	public String findIDresult(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean!=null) {
			return "redirect:/";
		}
		return "login/findIDresult";
	}
	
	@RequestMapping(value="/login/findPW")
	public String findPW(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean!=null) {
			return "redirect:/";
		}
		if(session.getAttribute("findIDResult")!=null) {
			session.removeAttribute("findIDResult");
		}
		if(session.getAttribute("findPWResult")!=null) {
			session.removeAttribute("findPWResult");
		}
		return "login/findPW";
	}
	
	@RequestMapping(value="/login/findPW",method=RequestMethod.POST)
	public String findPWCheck(HttpSession session,String name_check,String id_check,String email_check) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean!=null) {
			return "redirect:/";
		}
		int pwResult=loginService.findPWCheck(name_check,id_check,email_check);
		if(pwResult==0) {
			session.setAttribute("findPWResult", null);
		}else {
			String randomPW=createRandomPW();
			System.out.println("생성된 임시비번 : "+randomPW);
			/* 임시비번으로 비번설정하기 */
			loginService.updateRandomPW(name_check,id_check,email_check,randomPW);
			/* 이메일로 임시비번 보내기 */
			
			String setfrom = "bitcompanion@gmail.com";
			String tomail=email_check;
			String title="임시비밀번호 이메일";
			String c="";
			c+=System.getProperty("line.separator");
			c+=System.getProperty("line.separator");
			c+="임시 비밀번호는 "+randomPW+" 입니다.";
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
			session.setAttribute("findPWResult", "0");
		}
		return "login/findPWresult";
	}
	
	/* 10자리 임시 비번 만들기 */
	public String createRandomPW() {
		String pw="";
		char[] charSet=new char[] {
				'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e',
				'f','g','h','i','j','k','l','m','n','o','p','q','r','s','t',
				'u','v','w','x','y','z','A','B','C','D','E','F','G','H','I',
				'J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X',
				'Y','Z','!','@','#','$','%'
		};
		int idx=0;
		for(int i=0;i<10;i++) {
			if(i<8) {
				idx=(int)((charSet.length-5)*Math.random());
				pw+=charSet[idx];
			}else {
				idx=(int)(5*Math.random()+(charSet.length-5));
				pw+=charSet[idx];
			}
		}
		return pw;
	}

}
