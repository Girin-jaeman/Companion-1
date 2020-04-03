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
import org.springframework.web.servlet.View;

import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.model.entity.order.OrderVo;
import com.bit.companion.service.order.OrderService;

import net.sf.json.JSONArray;

@Controller
public class OrderCartController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@Autowired
	OrderService orderService;
	
	// 장바구니 담기.
	 @RequestMapping(value ="/order/orderCart",method=RequestMethod.POST)
	 public String orderCartAdd(Model model,HttpSession session,OrderVo orderVo,HttpServletRequest request) throws SQLException{
	 		MemberVo member = (MemberVo)session.getAttribute("memberVo");
	 		orderVo.setMember_id(member.getMember_id());
		/*
		 * orderVo.setCart_option((String)request.getAttribute("selectbox"));
		 * orderVo.setCart_quantity((int)request.getAttribute("cart_quantity"));
		 */
	 		
	 		logger.debug("cart_option 확인");
	 		logger.debug(orderVo.getCart_option());

		logger.debug("member_id 확인");
		logger.debug(member.getMember_name());
		logger.debug("옵션 수량 확인. 확인");
		logger.debug((Integer.toString(orderVo.getOrder_detail_quantity())));
		logger.debug("product_ id 확인");
		logger.debug((Integer.toString(orderVo.getProduct_id())));
		logger.debug("cart_quantity 확인");
		logger.debug((Integer.toString(orderVo.getCart_quantity())));
		
		
		orderService.insertCart(model,orderVo);
		
		 return "redirect:productDetail?idx="+orderVo.getProduct_id(); 
	};
	
	
	
	//장바구니 주문.
	@RequestMapping(value="/order/orderCartPurchase",method=RequestMethod.POST)
	public String orderCartPurchase(HttpServletRequest req,Model model,List<OrderVo> orderVo) throws SQLException {
//		HttpSession session = req.getSession();
//		String uid = (String)session.getAttribute("info_userid");
//		
//		List<OrderVo> list = new ArrayList<OrderVo>(); 
//		Map<String,Object> map = new HashMap<String,Object>();
//		//Map으로 다중 INSERT 하겠음.
//
//		int length = list.size();
//		logger.debug("length 확인 : "+ length);
//		logger.debug("list.size 확인 : "+ list.size());
//		
//		for(int i=0; i<length;i++) {
//			OrderVo ordervo = new OrderVo();
//		}
		orderService.insert_test(orderVo);
		 
		return "/order/successOrder";
	}
	
	
}
