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

@Controller
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	
	@Autowired
	ProductService productService;
	
	@Autowired
	OrderQuestionService orderQuestionService;
	
	OrderQuestionVo orderQuestionVo;
	
	String CategoryNUM;
	
	
	

	// param version test  ajax 실패하면 이거 살릴것.
	@RequestMapping(value = "/order/productDetail",method=RequestMethod.GET)
	public String productDetail(Model model,@RequestParam("idx") int product_id) throws SQLException {

		
		
		productService.productReview(model, product_id);
		productService.detail(model, product_id);	
		productService.productRecommend(model, product_id);
		return "order/productDetail";
	}
	

	
	

	
	//페이징 할 것.
	//product 목록 출력용.
	@RequestMapping(value = "/order/productMain/paging",method = RequestMethod.POST)
	public String productListPaging(Model model,@RequestParam("c") int category_id,
			@RequestParam(defaultValue="1") int curPage,HttpServletRequest request) {
		productService.category(model,category_id);
		return "order/productMain";
	}

	//URL주소 받아와서 정렬 할 것.
	 //목록 출력 원본....... 페이징 해야하니까 기록해 놓겠습니다.
	  @RequestMapping(value = "/order/productMain",method = RequestMethod.GET)
	  public String productcategory(Model model,@RequestParam("c") int category_id,HttpServletRequest request){

		  productService.category(model,category_id);
		  return "order/productMain";
	  }

	  
	///추천순 정렬
	@RequestMapping(value = "/order/productMain/orderByLike",method=RequestMethod.GET)
	public String productOrderByProductLike(Model model,@RequestParam("c") int category_id,HttpServletRequest request) throws SQLException {
		logger.debug("상품 정렬(추천순) 컨트롤러 작동 확인");
		logger.debug("카테고리 아이디 : "+Integer.toString(category_id) );
		
		productService.Alignment(model, category_id);
		 
		
		return "order/productMain";
	}
	
	///판매량 정렬
	@RequestMapping(value = "/order/productMain/orderBySelling",method=RequestMethod.GET)
	public String productOrderBySellingOrder(Model model,@RequestParam("c") int category_id,HttpServletRequest request) throws SQLException {
		logger.debug("상품 정렬(판매량순) 컨트롤러 작동 확인");
		logger.debug("카테고리 아이디 : "+Integer.toString(category_id) );
		productService.AlignmentOrderBySelling(model, category_id);
		
		return "order/productMain";
	}
	//낮은 가격 순 정렬
	@RequestMapping(value = "/order/productMain/orderByLowPrice",method=RequestMethod.GET)
	public String productOrderByLowPrice(Model model,@RequestParam("c") int category_id,HttpServletRequest request) throws SQLException {
		logger.debug("상품 정렬(낮은 가격 순) 컨트롤러 작동 확인");
		logger.debug("카테고리 아이디 : "+Integer.toString(category_id) );
		
		productService.AlignmentOrderByLowPrice(model, category_id);
		
		return "order/productMain";
	}
	
	//높은 가격 순 정렬
	@RequestMapping(value = "/order/productMain/orderByHighPrice",method=RequestMethod.GET)
	public String productOrderByHighPrice(Model model,@RequestParam("c") int category_id,HttpServletRequest request) throws SQLException {
		logger.debug("상품 정렬(높은 가격 순) 컨트롤러 작동 확인");
		logger.debug("카테고리 아이디 : "+Integer.toString(category_id) );
		productService.AlignmentOrderByHighPrice(model, category_id);
		
		return "order/productMain";
	}
	
	//등록일 순 정렬
	@RequestMapping(value = "/order/productMain/orderByDate",method=RequestMethod.GET)
	public String productOrderByDate(Model model,@RequestParam("c") int category_id,HttpServletRequest request) throws SQLException {
		logger.debug("상품 정렬(등록일 순) 컨트롤러 작동 확인");
		logger.debug("카테고리 아이디 : "+Integer.toString(category_id) );
		
		productService.AlignmentOrderByDate(model, category_id);
		return "order/productMain";
	}
	
	
	
	
	
	
	
	/* 답글 입력용 */
	@RequestMapping(value = "/order/productDetail/orderQuestion")
	public String orderQuestion(Model model) {
		return "order/orderQuestion";
	}

}