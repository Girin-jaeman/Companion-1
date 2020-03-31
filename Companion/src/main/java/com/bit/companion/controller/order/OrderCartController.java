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

import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.model.entity.order.OrderVo;
import com.bit.companion.service.order.OrderService;

@Controller
public class OrderCartController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@Autowired
	OrderService orderService;
	
	
	@RequestMapping(value ="/order/orderCart",method=RequestMethod.POST)
	public String orderCartAdd(Model model,HttpSession session,OrderVo orderVo,HttpServletRequest request) throws SQLException{
		MemberVo member = (MemberVo)session.getAttribute("memberVo");
		
		logger.debug("member_id 확인");
		logger.debug(member.getMember_name());
		logger.debug("옵션 수량 확인. 확인");
		logger.debug((Integer.toString(orderVo.getOrder_detail_quantity())));
		logger.debug("product_ id 확인");
		logger.debug((Integer.toString(orderVo.getProduct_id())));
		
		orderVo.setMember_id(member.getMember_id());
		String referer = (String)request.getHeader("REFERER");
		
		orderService.insertCart(model, orderVo);
		
		return "redirect:productDetail?idx="+orderVo.getProduct_id();
		
	};
	
	
}
