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
	private static final Logger logger=LoggerFactory.getLogger(AdminArticleController.class);
	
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
	@RequestMapping(value = "product_detail", method = RequestMethod.GET)
	public String productDetail(Model model, @RequestParam int product_id) {
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
	@RequestMapping(value = "product_ckUpload", method = RequestMethod.POST)
	public void ckUpload(HttpServletRequest req, HttpServletResponse res,
	         @RequestParam MultipartFile upload) throws Exception {
		logger.info("post product CKEditor img upload");
	 
		// random character create
		UUID uid = UUID.randomUUID();
	 
		OutputStream out = null;
		PrintWriter printWriter = null;
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html;charset=utf-8");
		try {
			String fileName = upload.getOriginalFilename(); // get file name
			byte[] bytes = upload.getBytes();
	  
			// upload path
			String ckUploadPath = uploadPath + File.separator + "ckUpload" + File.separator + uid + "_" + fileName;
			
			out = new FileOutputStream(new File(ckUploadPath));
			out.write(bytes);
			out.flush();  // init
			  
			printWriter = res.getWriter();
			String fileUrl = "product_ckSubmit?uid="+uid+"&fileName="+fileName;
			
			printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
			printWriter.flush();
	  
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(out != null) { out.close(); }
				if(printWriter != null) { printWriter.close(); }
			} catch(IOException e) { e.printStackTrace(); }
		}
		return; 
	}
	
	// ckeditor file loading
	@RequestMapping(value = "product_ckSubmit", method = RequestMethod.GET)
    public void ckSubmit(@RequestParam(value="uid") String uid, @RequestParam(value="fileName") String fileName
                            , HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		logger.info("get product CKEditor img submit");
		
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
	
	// product edit page category list - get
	@RequestMapping(value = "product_edit", method = RequestMethod.GET)
	public String productEdit(Model model, @RequestParam int product_id) {
		logger.info("get product edit");
	
		adminProductService.category(model);
		adminProductService.detail(model, product_id);
		 return "admin/product_edit";
	}
	
	// product edit - post
	@RequestMapping(value = "product_edit", method = RequestMethod.POST)
	public String productEdit(@ModelAttribute AdminProductVo bean, @RequestParam int product_id, MultipartFile file, HttpServletRequest req) throws IOException, Exception {
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
		System.out.println(bean.toString());
		adminProductService.update(bean);
		return "redirect:/admin/product_detail?product_id="+bean.getProduct_id();
	}
	
	// product delete - post
	@RequestMapping(value = "product_delete", method = RequestMethod.POST)
	public String productDelete(@RequestParam int product_id) {
		logger.info("post product delete");
		
		adminProductService.delete(product_id);
		return "redirect:/admin/product_list";
	}
}
