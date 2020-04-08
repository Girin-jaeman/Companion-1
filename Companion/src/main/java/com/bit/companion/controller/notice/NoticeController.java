package com.bit.companion.controller.notice;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.service.notice.NoticeService;
import com.mysql.jdbc.StringUtils;

@Controller
@RequestMapping(value = "/notice")
public class NoticeController {
	@Autowired
	NoticeService noticeService;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value = {"/list","/",""})
	public String list(Model model
			,@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range) {
		noticeService.list(model,page,range);
		return "notice/notice_list";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(HttpServletResponse response,HttpServletRequest request,Model model,@RequestParam int article_id) {
		
		// 쿠키란? https://hyeonstorage.tistory.com/114
		// 조회수 중복방지 쿠키적용
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
			cookie.setMaxAge(1000); // 초단위, 쿠키 유효기간
			response.addCookie(cookie); // 클라이언트 응답에 쿠키를 추가한다.
			noticeService.count(article_id);
		}
		noticeService.detail(model, article_id);
		
		return "notice/notice_detail";
	}
	
	// ckeditor file loading
		@RequestMapping(value = "/ckSubmit", method = RequestMethod.GET)
	    public void ckSubmit(@RequestParam(value="uid") String uid, @RequestParam(value="fileName") String fileName
	                            , HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			
	        //서버에 저장된 이미지 경로
	        String ckUploadPath = "ckUpload" +File.separator;
	        String Path = ckUploadPath + uid + "_" + fileName;
	        File imgFile = new File(File.separator+Path);
	        	
	        //사진 이미지 찾지 못하는 경우 예외처리로 빈 이미지 파일을 설정한다.
	        if(imgFile.isFile()){
	            byte[] buf = new byte[1024];
	            int readByte = 0;
	            int length = 0;
	            byte[] imgBuf = null;
	            
	            FileInputStream fileInputStream = null;
	            ByteArrayOutputStream outputStream = null;
	            ServletOutputStream out = null;
	            
	            try{
	                fileInputStream = new FileInputStream(imgFile);
	                outputStream = new ByteArrayOutputStream();
	                out = response.getOutputStream();
	                
	                while((readByte = fileInputStream.read(buf)) != -1){
	                    outputStream.write(buf, 0, readByte);
	                }
	                
	                imgBuf = outputStream.toByteArray();
	                length = imgBuf.length;
	                out.write(imgBuf, 0, length);
	                out.flush();
	                
	            }catch(IOException e){
	                e.printStackTrace();
	            }finally {
	                outputStream.close();
	                fileInputStream.close();
	                out.close();
	            }
	        }
	    }
}
