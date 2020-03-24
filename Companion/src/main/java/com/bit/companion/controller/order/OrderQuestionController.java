package com.bit.companion.controller.order;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.model.entity.order.OrderQuestionVo;
import com.bit.companion.service.order.OrderQuestionService;

@Controller
public class OrderQuestionController {
	
	private static final Logger logger = LoggerFactory.getLogger(OrderQuestionController.class);
	
	@Autowired
	OrderQuestionService orderQuestionService;
	
/*	//상품 조회 댓글 작성.
	@RequestMapping(value="order/productDetail/question", method=RequestMethod.POST)
	public String registReply(OrderQuestionVo orderQuestionVo,HttpSession session) throws SQLException {
		logger.debug("OrderQuestion Controller 동작중!!!!");
		System.out.println("컨트롤러 동작하는거 맞냐..");
		
		MemberVo member = (MemberVo)session.getAttribute("memberVo");
		orderQuestionVo.setMember_id(member.getMember_id());

		orderQuestionService.registReply(orderQuestionVo);
		return "redirect:/order/productDetail?idx=" + orderQuestionVo.getProduct_id();
	}*/
	
	//ajax productDetail PAGE 댓글 조회.
	@ResponseBody
	@RequestMapping(value = "order/productDetail/registReply",method=RequestMethod.POST)
	public void registReply(OrderQuestionVo orderQuestionVo,HttpSession session) throws SQLException {
		logger.debug("OrderQuestion Controller 동작중!!!!");
		MemberVo member = (MemberVo)session.getAttribute("memberVo");
		orderQuestionVo.setMember_id(member.getMember_id());
		orderQuestionService.registReply(orderQuestionVo);
	}
	
	
	
	
	
	
	
	
	
	
}
