package com.bit.companion.controller.order;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.model.entity.order.OrderVo;
import com.bit.companion.service.order.OrderService;

@Controller
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	

	
	@Autowired
	OrderService orderService;
	
	//ORDER MAIN 컨트롤러
//	@RequestMapping(value = "/order/orderMain")
//	public String orderMain(Model model) {
//		logger.debug("product list controller start");
//		orderService.list(model);
//		return "order/orderMain";
//	}	

	//상품 구매 페이지
	@RequestMapping(value = "/order/orderPurchase",method= {RequestMethod.GET,RequestMethod.POST})
	public String orderPurchase(Model model,HttpSession session,OrderVo orderVo,@RequestParam("idx") int product_id) throws SQLException {
		logger.debug("product purchase controller start");
		
		
		MemberVo member = (MemberVo)session.getAttribute("memberVo");
		orderVo.setMember_id(member.getMember_id());
		orderVo.setMember_name(member.getMember_name());
		orderVo.setMember_phone(member.getMember_phone());
		orderVo.setMember_email(member.getMember_email());
		
		session.setAttribute("orderVo",orderVo);
		//상품 목록 표시. 
		orderService.list(model, product_id);
		
		
		//장바구니에 담을 것.
		//장바구니 버튼 경로도 여기로 지정되어있음.
		
		
		logger.debug("1111order_detail_quantity 확인.");
		logger.debug((Integer.toString(orderVo.getOrder_detail_quantity())));
		logger.debug("2222order_detail_price확인.");
		logger.debug((Integer.toString(orderVo.getOrder_detail_price())));
		logger.debug("3333order_amount 확인");
		logger.debug((Integer.toString(orderVo.getOrder_amount())));
//데이터 확인용.
		logger.debug("member_id 확인");
		logger.debug(member.getMember_name());
		logger.debug("옵션 수량 확인. 확인");
		logger.debug((Integer.toString(orderVo.getOrder_detail_quantity())));
		logger.debug("product_ id 확인");
		logger.debug((Integer.toString(orderVo.getProduct_id())));
		
		logger.debug("cart_quantity 확인");
		logger.debug((Integer.toString(orderVo.getCart_quantity())));

		logger.debug("Order_detail_quantity 개수 확인");
		logger.debug((Integer.toString(orderVo.getOrder_detail_quantity())));
		logger.debug("Order_detail_option 개수 확인");
		logger.debug(orderVo.getOrder_detail_option());
		logger.debug("Product_stock (재고) 개수 확인");
		logger.debug((Integer.toString(orderVo.getProduct_stock())));
//		logger.debug(orderVo.getMember_email());
//		logger.debug(orderVo.getMember_email());
		
		return "order/orderPurchase";
	}
	
	//카카오 API컨트롤러
	@RequestMapping(value = "/order/payApi")
	public String apiTest(Model model) {
		logger.debug("payAPI controller start");
		return "order/payApi";
	}

	// 다중 insert 
	@RequestMapping(value = "/order/successOrder",method= RequestMethod.POST)
	public void orderSuccess(Model model,OrderVo orderVo,HttpSession session,HttpServletRequest request) {
		logger.debug("주문 성공했다면 order table에 인서트 되었는지 확인 해야 합니다.");
		
		
		
		
		  MemberVo member = (MemberVo)session.getAttribute("memberVo");
		  orderVo.setMember_id(member.getMember_id());
		  orderVo.setMember_name(member.getMember_name());
		  orderVo.setMember_phone(member.getMember_phone());
		  orderVo.setMember_email(member.getMember_email());
		  
		  
		 
//		orderVo.setOrder_detail_quantity(request.getAttribute("order_detail_quantity")); 
//		session.setAttribute("orderVo",orderVo);
//		orderVo.setProduct_id((int)session.getAttribute("product_id"));
		/*
		 * orderVo.setCart_option((String)request.getAttribute("cart_option"));
		 * orderVo.setCart_quantity((int)request.getAttribute("order_detail_quantity"));
		 */
		logger.debug(orderVo.getCart_option());
		
		logger.debug((Integer.toString(orderVo.getCart_quantity())));
		
		
		System.out.println(orderVo.toString());
		logger.debug(orderVo.getMember_id());
		logger.debug((Integer.toString(orderVo.getProduct_id())));
		logger.debug(orderVo.getMember_name());
		logger.debug(orderVo.getMember_phone());
		logger.debug(orderVo.getMember_email());
		logger.debug("1111order_detail_quantity 확인.");
		logger.debug((Integer.toString(orderVo.getOrder_detail_quantity())));
		logger.debug("TESTETSETproduct_stock 개수 ( 재고) 확인.");
		logger.debug((Integer.toString(orderVo.getProduct_stock())));
		logger.debug("2222order_detail_price확인.");
		logger.debug((Integer.toString(orderVo.getOrder_detail_price())));
		logger.debug("3333order_amount 확인");
		logger.debug((Integer.toString(orderVo.getOrder_amount())));
		
	
		
		orderService.OrderInfo_Detail(orderVo); 
		
		
		
	}
	
	

}
