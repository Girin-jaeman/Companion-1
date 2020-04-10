package com.bit.companion.controller.order;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

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
	
	/*
	 * //페이징 할 것. 페이징과 동시에 리스트도 받아오게 됨. //product 목록 출력용.
	 * 
	 * @RequestMapping(value = "/order/productMain/paging",method =
	 * RequestMethod.GET) public String productListPaging(Model
	 * model,@RequestParam("c") int category_id,HttpServletRequest request) throws
	 * SQLException { productService.countPage(model, category_id); return
	 * "order/productMain"; }
	 */
	
	//페이지 개수용.
	//@RequestParam("num") 은 페이지 번호.
	@RequestMapping(value = "/order/productMain",method = RequestMethod.GET)
	public String listPage(Model model,@RequestParam("c") int category_id, @RequestParam("num") int num,HttpServletRequest request) throws Exception {
		logger.debug("페이지 개수 확인용 컨트롤러 작동 확인?");
		logger.debug(Integer.toString(num));
		OrderPagenation page = new OrderPagenation();
		
		page.setNum(num);
		page.setCount(productService.count(model, category_id));
		System.out.println(page.getCount());
		page.setPageNum(num);
		System.out.println(page.getPageNum());
		System.out.println(page.getStartPageNum());
		System.out.println(page.getEndPageNum());
//		/*
//		    1. 게시물의 총 개수를 구하고
//			2. 한 페이지당 출력할 게시물 개수를 정하고(10개)
//			3. 하단에 표시할 페이징 번호의 개수를 구하고(소수점은 올림)
//			4. 현재 페이지를 기준으로 10개의 데이터를 출력합니다
//		 */
//		//게시물 총 개수.
//		int count= productService.count(model, category_id);
//		
//		// 한 페이지에 출력할 게시물 개수
//		int postNum = 12;
//		
//		//하단 페이징 번호 ([ 게시물 총 개수 ÷ 한 페이지에 출력할 개수 ] 의 올림)
//		int pageNum = (int)Math.ceil((double)count/postNum);
//		
//		//출력할 게시물
//		int displayPost = (num -1) * postNum;
//		
//		///페이징에 대해서////
//		
//		// 한번에 표시할 페이징 번호의 갯수
//		int pageNum_cnt = 3;
//
//		//마지막 페이지 번호 = ((올림)(현재 페이지 번호 / 한번에 표시할 페이지 번호의 갯수)) * 한번에 표시할 페이지 번호의 갯수
//		// 표시되는 페이지 번호 중 마지막 번호
//		int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
//
//		//시작 페이지 = 마지막 페이지 번호 - 한번에 표시할 페이지 번호의 갯수 + 1
//		// 표시되는 페이지 번호 중 첫번째 번호
//		int startPageNum = endPageNum - (pageNum_cnt - 1);
//	
//		// 마지막 번호 재계산
//		int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
//		 
//		if(endPageNum > endPageNum_tmp) {
//		 endPageNum = endPageNum_tmp;
//		}
//		
//		boolean prev=startPageNum ==1? false : true;
//		boolean next=endPageNum * pageNum_cnt >= count ? false : true;
//		  
//		
//		
//		
//		logger.debug("리스트 앞부분");
//		//상품 목록 10개 + 리스트 1~10개 까지만 출력함.
////		List<ProductVo>list= productService.listPage(model, displayPost, postNum, category_id);
//		logger.debug(Integer.toString(displayPost));
//		logger.debug(Integer.toString(postNum));
//	
//		logger.debug("service 뒷부분!");
//		
//		/* model.addAttribute("listPage",list); */
//		model.addAttribute("pageNum",page.getPageNum);
//		productService.category(model, category_id);
//		logger.debug("category service 실행");
//		productService.countPage(model, category_id,page.getDisplayPost(),page.getPostNum());
		
		
//		logger.debug("countPage service 실행");
//		productService.listPage(model, displayPost, postNum, category_id);
//		
//		// 시작 및 끝 번호
//		model.addAttribute("startPageNum", startPageNum);
//		model.addAttribute("endPageNum", endPageNum);
//
//		// 이전 및 다음 
//		model.addAttribute("prev", prev);
//		model.addAttribute("next", next);
//		
//		//현재 페이지 어디인지 표시하기위해서?
//		model.addAttribute("select",num);
//		
//		
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