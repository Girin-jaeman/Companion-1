package com.bit.companion.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.bit.companion.model.entity.login.MemberVo;
public class AdminInterceptor extends HandlerInterceptorAdapter {
	private static final Logger logger=LoggerFactory.getLogger(AdminInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest req,
		HttpServletResponse res, Object obj) throws Exception {
		logger.info("admin interceptor");
		
		HttpSession session = req.getSession();
		MemberVo member = (MemberVo)session.getAttribute("memberVo");
		
		if(member == null) {
			res.sendRedirect("/companion/login");
			return false;
		}
	  
		if(member.getMember_grade() != 0 && member.getMember_grade() != 1) {
			res.sendRedirect("/companion/");
			return false;
		}  
		
		return true;
	}
}