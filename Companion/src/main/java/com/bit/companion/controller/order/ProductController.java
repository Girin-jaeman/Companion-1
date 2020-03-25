package com.bit.companion.controller.order;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.model.entity.order.OrderQuestionVo;
import com.bit.companion.service.order.OrderQuestionService;
import com.bit.companion.service.order.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	OrderQuestionService orderQuestionService;
	
	OrderQuestionVo orderQuestionVo;

	// param version test  ajax 실패하면 이거 살릴것.
	@RequestMapping(value = "/order/productDetail",method=RequestMethod.GET)
	public String productDetail(Model model,@RequestParam("idx") int product_id) throws SQLException {
		productService.detail(model, product_id);
		
//		답글 리스트 넘기기 ajax로 처리하기 위해 주석 처리.
//		List<OrderQuestionVo> list = orderQuestionService.replyList(product_id);
//		model.addAttribute("reply",list);
		
		return "order/productDetail";
	}

	@RequestMapping(value = "/order/productMain",method = RequestMethod.GET)
	public String productcategory(Model model,@RequestParam("c") int category_id) {
		productService.category(model,category_id);
		return "order/productMain";
	}

	/* 답글 입력용 */
	@RequestMapping(value = "/order/productDetail/orderQuestion")
	public String orderQuestion(Model model) {
		return "order/orderQuestion";
	}

}