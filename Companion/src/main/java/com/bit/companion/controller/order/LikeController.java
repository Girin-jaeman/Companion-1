package com.bit.companion.controller.order;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.model.entity.order.LikeVo;
import com.bit.companion.service.order.LikeService;

@Controller
public class LikeController {

	private static final Logger logger = LoggerFactory.getLogger(LikeController.class);

	@Autowired
	LikeService likeService;

	
	/*
	 * @PostMapping("/order/likeTest") public @ResponseBody void
	 * likeTestController(@RequestParam Map<String, Object> param,HttpServletRequest
	 * request,LikeVo likeVo) { logger.info("좋아요 연습페이지");
	 * likeService.likeInsert(param); }//LIKETEST 페이지
	 */	 
	  
	  @ResponseBody
	  @RequestMapping(value="/order/likeInsert", method = RequestMethod.POST)
	  public int likeInsert(LikeVo likeVo,HttpSession session) throws Exception {
		  int result;
		  System.out.println("likeInsertController run");
		  logger.debug(likeVo.getMember_id());
		  logger.debug((Integer.toString(likeVo.getProduct_id())));
//		  MemberVo member = (MemberVo)session.getAttribute("member");
//		  likeVo.setLike_id(member.getMember_id());
		  result = likeService.likeInsert(likeVo);
		  return result;
	  }
	  

//	@RequestMapping(value="/order/likeTest")


}
