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

import com.bit.companion.common.Search;
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
	
	//  category list (product add page) - get
	@RequestMapping(value = "product_add", method = RequestMethod.GET)
	public String productAdd(Model model) {
		logger.info("get product add");
	
		adminProductService.category(model);
		return "admin/product_add";
	}
	
	// product list - get
	@RequestMapping(value = "product_list", method = RequestMethod.GET)
	public String productList(Model model
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range
			, @RequestParam(required = false, defaultValue = "product") String searchType
			, @RequestParam(required = false) String keyword
			, @ModelAttribute("search") Search search) {
		logger.info("get product list");
		
		adminProductService.category(model);
		adminProductService.list(model, page, range, searchType, keyword, search);
		return "admin/product_list";
	}
	
	//product detail - get
	@RequestMapping(value = "product_detail/{idx}", method = RequestMethod.GET)
	public String productDetail(Model model, @PathVariable("idx") int product_id) {
		logger.info("get product detail");
		
		adminProductService.category(model);
		adminProductService.detail(model, product_id);
		return "admin/product_detail";
	}
	
	// product add - post
	@RequestMapping(value = "product_add", method = RequestMethod.POST)
	public String productAdd(@ModelAttribute AdminProductVo bean, MultipartFile file) throws IOException, Exception {
		logger.info("post product add");
		
		// file upload
		String imgUploadPath = uploadPath + File.separator + "imgUpload"; // upload path  
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath); // yyyy-mm-dd folder create
		String fileName = null; // tempPath + fileName
		
		// file ckeck
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
			bean.setProduct_image(File.separator+"imgUpload"+ymdPath+File.separator+fileName);
			bean.setProduct_thumb(File.separator + "imgUpload"+ymdPath+File.separator+"s"+File.separator+"s_"+fileName);
		} else {
			fileName = File.separator + "images" + File.separator + "none.png";
			bean.setProduct_image(fileName);
			bean.setProduct_thumb(fileName);
		}
		
		adminProductService.insert(bean);
		return "redirect:product_list";
	}
	
	// product add - ckeditor file upload
	@RequestMapping(value = "/product_add/ckUpload", method = RequestMethod.POST)
	public void postCKEditorImgUpload(HttpServletRequest req, HttpServletResponse res,
	         @RequestParam MultipartFile upload) throws Exception {
		logger.info("post CKEditor img upload");
	 
		// random character create
		UUID uid = UUID.randomUUID();
	 
		OutputStream out = null;
		PrintWriter printWriter = null;
		try {
			String fileName = upload.getOriginalFilename(); // get file name
			byte[] bytes = upload.getBytes();
	  
			// upload path
			String ckUploadPath = uploadPath + File.separator + "ckUpload" + File.separator + uid + "_" + fileName;
			
			out = new FileOutputStream(new File(ckUploadPath));
			  out.write(bytes);
			  out.flush();  // init
			  
			  String callback = req.getParameter("CKEditorFuncNum");
			  printWriter = res.getWriter();
			  String fileUrl = "/ckUpload/" + uid + "_" + fileName; 
			  
			  // upload msg print
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
	
	// product edit page category list - get
	@RequestMapping(value = "product_edit/{idx}", method = RequestMethod.GET)
	public String productEdit(Model model, @PathVariable("idx") int product_id) {
		logger.info("get product edit");
	
		adminProductService.category(model);
		adminProductService.detail(model, product_id);
		 return "admin/product_edit";
	}
	
	// product edit - post
	@RequestMapping(value = "product_edit/{idx}", method = RequestMethod.POST)
	public String productEdit(@ModelAttribute AdminProductVo bean, @PathVariable("idx") int product_id, MultipartFile file, HttpServletRequest req) throws IOException, Exception {
		logger.info("post product edit");
		
		// new file upload check
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			// old file delete
			new File(uploadPath + req.getParameter("product_image")).delete();
			new File(uploadPath + req.getParameter("product_thumb")).delete();
		  
			// new file upload
			String imgUploadPath = uploadPath + File.separator + "imgUpload";
			String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
			String fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		  
			bean.setProduct_image(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
			bean.setProduct_thumb(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		  
		} else { 
			// old file reload
			bean.setProduct_image(req.getParameter("product_image"));
			bean.setProduct_thumb(req.getParameter("product_thumb"));
		}
		
		adminProductService.update(bean);
		return "redirect:../product_detail/"+product_id;
	}
	
	// product delete - post
	@RequestMapping(value = "product_delete/{idx}", method = RequestMethod.POST)
	public String productDelete(@PathVariable("idx") int product_id) {
		logger.info("post product delete");
		
		adminProductService.delete(product_id);
		return "redirect:../product_list";
	}
}
