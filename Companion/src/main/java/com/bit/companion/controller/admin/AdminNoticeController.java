package com.bit.companion.controller.admin;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bit.companion.model.entity.admin.AdminArticleVo;
import com.bit.companion.service.admin.AdminNoticeService;
import com.bit.companion.util.UploadFileUtils;

@Controller
@RequestMapping(value = "/admin/")
public class AdminNoticeController {

	private static final Logger logger=LoggerFactory.getLogger(AdminNoticeController.class);
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@Autowired
	AdminNoticeService adminNoticeService;
	
	// notice list - get 
	@RequestMapping(value = "testnoticelist", method = RequestMethod.GET)
	public String noticeList(Model model
			,@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range) {
		logger.info("get notice list");
		adminNoticeService.list(model,page,range);
		return "admin/testnoticelist";
	}
	
	// notice detail - get
	@RequestMapping(value = "testnoticedetail/{idx}", method = RequestMethod.GET)
	public String noticeDetail(Model model, @PathVariable("idx") int article_id) {
		logger.info("get notice detail");
		adminNoticeService.detail(model, article_id);
		return "admin/testnoticedetail";
	}
	
	// notice add - get
	@RequestMapping(value = "testnoticeadd", method = RequestMethod.GET)
	public String noticeAdd() {
		logger.info("get notice add");
		return "admin/testnoticeadd";
	}
	// notice add - post
	@RequestMapping(value = "testnoticeadd", method = RequestMethod.POST)
	public String noticeAdd(@ModelAttribute AdminArticleVo bean, MultipartFile file) throws IOException, Exception {
		logger.info("post notice add");
		
		// File Upload
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;
		
		if(file!=null) {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}
		
		bean.setArticle_image(File.separator+"imgUpload"+ymdPath+File.separator+fileName);
		bean.setArticle_thumb(File.separator + "imgUpload"+ymdPath+File.separator+"s"+File.separator+"s_"+fileName);
		
		adminNoticeService.insert(bean);
		
		return "redirect:testnoticelist";
	}
	
	// notice edit - get
	@RequestMapping(value = "testnoticeedit/{idx}", method = RequestMethod.GET)
	public String noticeEdit(Model model, @PathVariable("idx") int article_id) {
		logger.info("get notice edit");
		adminNoticeService.detail(model, article_id);
		return "admin/testnoticeedit";
	}
	// notice edit - post
	@RequestMapping(value = "testnoticeedit/{idx}", method = RequestMethod.POST)
	public String noticeEdit(@ModelAttribute AdminArticleVo bean, @PathVariable("idx") int article_id,MultipartFile file, HttpServletRequest req) throws IOException, Exception {
		logger.info("post notice edit");
		
		// 새로운 파일이 등록되었는지 확인
		 if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
		  // 기존 파일을 삭제
		  new File(uploadPath + req.getParameter("article_image")).delete();
		  new File(uploadPath + req.getParameter("article_thumb")).delete();
		  
		  // 새로 첨부한 파일을 등록
		  String imgUploadPath = uploadPath + File.separator + "imgUpload";
		  String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		  String fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		  
		  bean.setArticle_image(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		  bean.setArticle_thumb(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		  
		 } else {  // 새로운 파일이 등록되지 않았다면
		  // 기존 이미지를 그대로 사용
		  bean.setArticle_image(req.getParameter("article_image"));
		  bean.setArticle_thumb(req.getParameter("article_thumb"));
		 }
		
		adminNoticeService.update(bean);
		
		return "redirect:../testnoticedetail/"+bean.getArticle_id();
	}
	// notice delete - post
	@RequestMapping(value = "testnoticedelete", method = RequestMethod.POST)
	public String noticeDelete(@ModelAttribute AdminArticleVo bean) {
		logger.info("post notice delete");
		adminNoticeService.delete(bean);
		return "redirect:testnoticelist";
	}
}
