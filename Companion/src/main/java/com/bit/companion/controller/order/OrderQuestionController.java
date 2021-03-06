package com.bit.companion.controller.order;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

@Controller
public class OrderQuestionController {
	
	private static final Logger logger = LoggerFactory.getLogger(OrderQuestionController.class);
	
	@Autowired
	OrderQuestionService orderQuestionService;
	
	//문의하기 댓글 작성.
	@RequestMapping(value="order/productDetail/question", method=RequestMethod.POST)
	public String registReply(OrderQuestionVo orderQuestionVo,HttpSession session) throws SQLException {
		logger.debug("OrderQuestion Controller 동작중!!!!");
		System.out.println("컨트롤러 동작하는거 맞냐..");
		MemberVo member = (MemberVo)session.getAttribute("memberVo");
		orderQuestionVo.setMember_id(member.getMember_id());
		System.out.println(member.getMember_id());
		//question table insert = 문의글 작성.
		orderQuestionService.registReply(orderQuestionVo);
		return "order/productDetail";
	}
	
	//문의하기 목록 출력.
	//ajax에서 getJson 방식으로 매핑 주소 에서 return 하는 값을 받아 옴.
//	@ResponseBody
//	@RequestMapping(value="order/productDetail/ReplyList",method = RequestMethod.GET)
//	public List<OrderQuestionVo> getReplyList(Model model, @RequestParam("idx") int product_id) throws SQLException{
//		logger.debug("GET replyList call...");
//		logger.debug("왜 특정 데이터만 실행?");
//		
//		List<OrderQuestionVo> reply = orderQuestionService.replyList(model, product_id);
//		
//		return reply;
//	}
	
	
	@RequestMapping(value="order/productDetail/ReplyList",method = RequestMethod.GET)
	public String ReplyList(Model model,@RequestParam("idx") int product_id) throws SQLException{
		logger.debug("GET replyList call...");
		logger.debug("왜 특정 데이터만 실행?");
		
		List<OrderQuestionVo> reply = orderQuestionService.replyList(model, product_id);
		
		return "order/question";
	}
	
	
	

	
	
	
	
	
	
	
	
}
