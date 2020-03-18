package com.bit.companion.controller.notice;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.service.notice.NoticeService;
import com.mysql.jdbc.StringUtils;

@Controller
@RequestMapping(value = "/notice")
public class NoticeController {
	@Autowired
	NoticeService noticeService;
	
	@RequestMapping(value = {"/list","/"})
	public String list(Model model
			,@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range) {
		noticeService.list(model,page,range);
		return "notice/notice_list";
	}
	
	@RequestMapping(value = "/detail/{idx}")
	public String detail(HttpServletResponse response,HttpServletRequest request,Model model,@PathVariable("idx") int article_id) {
		
		// 저장된 쿠키 불러오기
		Cookie cookies[] = request.getCookies();
		Map mapCookie = new HashMap();
		if(request.getCookies() != null) {
			for (int i=0;i<cookies.length;i++) {
				Cookie obj = cookies[i];
				mapCookie.put(obj.getName(),obj.getValue());
			}
		}
		
		// 저장된 쿠키중에 article_count 만 불러오기
		String cookie_article_count = (String) mapCookie.get("article_count");
		// 저장될 새로운 쿠키값 생성
		String new_cookie_article_count="|"+article_id;
		
		// 저장된 쿠키에 새로운 쿠키값이 존재하는 지 검사
		if(StringUtils.indexOfIgnoreCase(cookie_article_count, new_cookie_article_count)==-1) {
			// 없을 경우 쿠키 생성
			Cookie cookie = new Cookie("article_count",cookie_article_count+new_cookie_article_count);
			// cookie.setMaxAge(1000); // 초단위
			response.addCookie(cookie);
			noticeService.count(article_id);
		}
		noticeService.detail(model, article_id);
		
		return "notice/notice_detail";
	}
}
