package com.bit.companion.controller.admin;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bit.companion.common.Search;
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
	@RequestMapping(value = "notice_list", method = RequestMethod.GET)
	public String noticeList(Model model
			,@RequestParam(required = false, defaultValue = "1") int page
			,@RequestParam(required = false, defaultValue = "1") int range
			,@RequestParam(required = false, defaultValue = "all") String searchType
			,@RequestParam(required = false) String keyword
			,@ModelAttribute("search") Search search) {
		logger.info("get notice list");
		
		adminNoticeService.list(model, page, range, searchType, keyword, search);
		return "admin/notice_list";
	}
	
	// notice detail - get
	@RequestMapping(value = "notice_detail", method = RequestMethod.GET)
	public String noticeDetail(Model model, @RequestParam int article_id) {
		logger.info("get notice detail");
		adminNoticeService.detail(model, article_id);
		return "admin/notice_detail";
	}
	
	// notice add - get
	@RequestMapping(value = "notice_add", method = RequestMethod.GET)
	public String noticeAdd() {
		logger.info("get notice add");
		return "admin/notice_add";
	}
	// notice add - post
	@RequestMapping(value = "notice_add", method = RequestMethod.POST)
	public String noticeAdd(@ModelAttribute AdminArticleVo bean, MultipartFile file) throws IOException, Exception {
		logger.info("post notice add");
		
		// File Upload
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;
		
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
			bean.setArticle_image(File.separator+"imgUpload"+ymdPath+File.separator+fileName);
			bean.setArticle_thumb(File.separator+"imgUpload"+ymdPath+File.separator+"s"+File.separator+"s_"+fileName);
		} else {
			fileName = File.separator + "images" + File.separator + "none.png";
			bean.setArticle_image(fileName);
			bean.setArticle_thumb(fileName);
		}
		
		adminNoticeService.insert(bean);
		
		return "redirect:notice_list";
	}
	
	// notice ckeditor - post
	@RequestMapping(value = "notice_ckUpload", method = RequestMethod.POST)
	public void ckUpload(HttpServletRequest req,HttpServletResponse res,@RequestParam MultipartFile upload) throws Exception {
		logger.info("post notice CKEditor img upload");
		
		UUID uid = UUID.randomUUID();
		
		OutputStream out = null;
		PrintWriter printWriter = null;
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html;charset=utf-8");
		try {
			String fileName = upload.getOriginalFilename();
			byte[] bytes = upload.getBytes();
			
			String ckUploadPath = uploadPath + File.separator + "ckUpload"+File.separator+uid+"_"+fileName;
			
			out = new FileOutputStream(new File(ckUploadPath));
			out.write(bytes);
			out.flush();
			
			printWriter = res.getWriter();
			String fileUrl = "notice_ckSubmit?uid="+uid+"&fileName="+fileName;
			
			printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
			printWriter.flush();
			
		}catch(IOException e) {
			e.printStackTrace();
		}finally {
			try{
				if(out!=null) {
					out.close();
				}
				if(printWriter!=null) {
					printWriter.close();
				}
			}catch(IOException e) {
				e.printStackTrace();
			}
		}
		return;
	}
	
	// ckeditor file loading
	@RequestMapping(value = "notice_ckSubmit", method = RequestMethod.GET)
    public void ckSubmit(@RequestParam(value="uid") String uid, @RequestParam(value="fileName") String fileName
                            , HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		logger.info("get notice CKEditor img submit");
		
        //서버에 저장된 이미지 경로
        String ckUploadPath = uploadPath + "ckUpload" +File.separator;
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
	
	// notice edit - get
	@RequestMapping(value = "notice_edit", method = RequestMethod.GET)
	public String noticeEdit(Model model, @RequestParam int article_id) {
		logger.info("get notice edit");
		adminNoticeService.detail(model, article_id);
		return "admin/notice_edit";
	}
	// notice edit - post
	@RequestMapping(value = "notice_edit", method = RequestMethod.POST)
	public String noticeEdit(@ModelAttribute AdminArticleVo bean, @RequestParam int article_id,MultipartFile file, HttpServletRequest req) throws IOException, Exception {
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
		
		return "redirect:/admin/notice_detail?article_id="+bean.getArticle_id();
	}
	// notice delete - post
	@RequestMapping(value = "notice_delete", method = RequestMethod.POST)
	public String noticeDelete(@RequestParam int article_id) {
		logger.info("post notice delete");
		adminNoticeService.delete(article_id);
		return "redirect:/admin/notice_list";
	}
}
