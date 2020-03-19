package com.bit.companion.controller.admin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

import com.bit.companion.model.entity.admin.AdminProductVo;
import com.bit.companion.service.admin.AdminProductService;
import com.bit.companion.util.UploadFileUtils;


@Controller
@RequestMapping(value = "/admin/")
public class AdminProductController {

	private static final Logger logger=LoggerFactory.getLogger(AdminNoticeController.class);
	
	// upload path
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@Autowired
	AdminProductService adminProductService;
	
	// product add page category list - get
	@RequestMapping(value = "testproductadd", method = RequestMethod.GET)
	public String productAdd(Model model) {
		logger.info("get product add");
	
		 adminProductService.category(model);
		 return "admin/testproductadd";
	}
	
	// prodcut add - post
	@RequestMapping(value = "testproductadd", method = RequestMethod.POST)
	public String productAdd(@ModelAttribute AdminProductVo bean, MultipartFile file) throws IOException, Exception {
		logger.info("post product add");
		
		// File Upload
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;
		
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
			bean.setProduct_image(File.separator+"imgUpload"+ymdPath+File.separator+fileName);
			bean.setProduct_thumb(File.separator + "imgUpload"+ymdPath+File.separator+"s"+File.separator+"s_"+fileName);
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
			bean.setProduct_image(fileName);
			bean.setProduct_thumb(fileName);
		}
		
		adminProductService.insert(bean);
		return "redirect:testadminhome";
	}
	
	// product add - ckeditor
	// ck 에디터에서 파일 업로드
	@RequestMapping(value = "/goods/ckUpload", method = RequestMethod.POST)
	public void postCKEditorImgUpload(HttpServletRequest req,
	         HttpServletResponse res,
	         @RequestParam MultipartFile upload) throws Exception {
	 logger.info("post CKEditor img upload");
	 
	 // 랜덤 문자 생성
	 UUID uid = UUID.randomUUID();
	 
	 OutputStream out = null;
	 PrintWriter printWriter = null;
	   
	 // 인코딩
	 res.setCharacterEncoding("utf-8");
	 res.setContentType("text/html;charset=utf-8");
	 
	 try {
	  
	  String fileName = upload.getOriginalFilename(); // 파일 이름 가져오기
	  byte[] bytes = upload.getBytes();
	  
	  // 업로드 경로
	  String ckUploadPath = uploadPath + File.separator + "ckUpload" + File.separator + uid + "_" + fileName;
	  
	  out = new FileOutputStream(new File(ckUploadPath));
	  out.write(bytes);
	  out.flush(); // out에 저장된 데이터를 전송하고 초기화
	  
	  String callback = req.getParameter("CKEditorFuncNum");
	  printWriter = res.getWriter();
	  String fileUrl = "/ckUpload/" + uid + "_" + fileName; // 작성화면
	  
	  // 업로드시 메시지 출력
	  printWriter.println("<script type='text/javascript'>"
	     + "window.parent.CKEDITOR.tools.callFunction("
	     + callback+",'"+ fileUrl+"','이미지를 업로드하였습니다.')"
	     +"</script>");
	  
	  printWriter.flush();
	  
	 } catch (IOException e) { e.printStackTrace();
	 } finally {
	  try {
	   if(out != null) { out.close(); }
	   if(printWriter != null) { printWriter.close(); }
	  } catch(IOException e) { e.printStackTrace(); }
	 }
	 
	 return; 
	}
	
	// product list - get
	@RequestMapping(value = "testproductlist", method = RequestMethod.GET)
	public String productList(Model model) {
		logger.info("get product list");
		
		adminProductService.list(model);
		return "admin/testproductlist";
	}
	
	//product detail - get
	@RequestMapping(value = "testproductdetail/{idx}", method = RequestMethod.GET)
	public String productDetail(Model model, @PathVariable("idx") int product_id) {
		logger.info("get product detail");
		
		adminProductService.detail(model, product_id);
		return "admin/testproductdetail";
	}
	
	// product edit page category list - get
	@RequestMapping(value = "testproductedit/{idx}", method = RequestMethod.GET)
	public String productEdit(Model model, @PathVariable("idx") int product_id) {
		logger.info("get product edit");
	
		adminProductService.category(model);
		adminProductService.detail(model, product_id);
		 return "admin/testproductedit";
	}
	
	// product edit - post
	@RequestMapping(value = "testproductedit/{idx}", method = RequestMethod.POST)
	public String productEdit(@ModelAttribute AdminProductVo bean, @PathVariable("idx") int product_id) {
		logger.info("post product edit");
		
		adminProductService.update(bean);
		return "redirect:../testproductdetail/"+product_id;
	}
	
	// product delete - post
	@RequestMapping(value = "testproductdelete/{idx}", method = RequestMethod.POST)
	public String productDelete(@PathVariable("idx") int product_id) {
		logger.info("post product delete");
		
		adminProductService.delete(product_id);
		return "redirect:../testproductlist";
	}
}
