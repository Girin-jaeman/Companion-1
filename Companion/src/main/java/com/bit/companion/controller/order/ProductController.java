package com.bit.companion.controller.order;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.companion.model.entity.order.OrderQuestionVo;
import com.bit.companion.service.order.OrderQuestionService;
import com.bit.companion.service.order.ProductService;
import com.bit.companion.service.order.ProductServiceImpl;

@Controller
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	
	@Autowired
	ProductService productService;
	
	@Autowired
	OrderQuestionService orderQuestionService;
	
	OrderQuestionVo orderQuestionVo;

	// param version test  ajax 실패하면 이거 살릴것.
	@RequestMapping(value = "/order/productDetail",method=RequestMethod.GET)
	public String productDetail(Model model,@RequestParam("idx") int product_id) throws SQLException {
		productService.detail(model, product_id);	
		return "order/productDetail";
	}

	
	//페이징 할 것.
	//product 목록 출력용.
	@RequestMapping(value = "/order/productMain/paging",method = RequestMethod.POST)
	public String productListPaging(Model model,@RequestParam("c") int category_id,
			@RequestParam(defaultValue="1") int curPage,HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
//		int listCnt = (productService.productPaging());
		
		
		
		productService.category(model,category_id);
		return "order/productMain";
		
	}

	 //목록 출력 원본....... 페이징 해야하니까 기록해 놓겠습니다.
	  @RequestMapping(value = "/order/productMain",method = RequestMethod.GET)
	  public String productcategory(Model model,@RequestParam("c") int category_id){
		  productService.category(model,category_id);
		  return "order/productMain";
	  }
	 
	
	/* 답글 입력용 */
	@RequestMapping(value = "/order/productDetail/orderQuestion")
	public String orderQuestion(Model model) {
		return "order/orderQuestion";
	}

}