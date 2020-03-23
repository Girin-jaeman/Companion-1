package com.bit.companion.controller.order;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.companion.model.entity.order.LikeVo;
import com.bit.companion.service.order.LikeService;

@Controller
public class LikeController {
	
	
	private static final Logger logger=LoggerFactory.getLogger(LikeController.class);

	@Autowired
	LikeService likeService;
	
	
	@PostMapping("/order/likeTest")
	public @ResponseBody void likeTestController(@RequestParam Map<String, Object> param,HttpServletRequest request,LikeVo likeVo) {
		logger.info("좋아요 연습페이지");
		likeService.likeTest(param); 
	}//LIKETEST 페이지 
	
	@RequestMapping(value="/order/productMain/like.do",method=RequestMethod.POST)
	public String likeController(Model model,@Param("product_id") int product_id, @Param("member_id") String member_id) {
		logger.info("좋아요 실행");
		likeService.likeUpdate(model, product_id, member_id);
		return "order/productMain";
	}
	
	/*
	 * @RequestMapping(value="/order/productMain/like.undo",method=RequestMethod.
	 * POST) public String unlikeController(Model model,@Param("product_id") int
	 * product_id, @Param("member_id") String member_id) { logger.info("좋아요 취소 실행");
	 * likeService.likeDelete(model, product_id, member_id); return
	 * "order/productMain"; }
	 * 
	 * @RequestMapping(value="/order/productMain",method=RequestMethod.POST) public
	 * String inquiry(Model model,@Param("product_id") int
	 * product_id, @Param("member_id") String member_id) { logger.info("중복 검사 실행");
	 * likeService.likeDelete(model, product_id, member_id); return
	 * "order/productMain"; }
	 * 
	 * @RequestMapping(value="/order/productMain",method=RequestMethod.POST)
	 * //sts10에서 jSON DATA를 for문으로 돌려서 리스트 출력함. public String AllLike(Model
	 * model,@Param("product_id") int product_id) { logger.info("좋아요 모든 갯수 출력.");
	 * likeService.productLikeInquiry(model, product_id); return
	 * "order/productMain"; }
	 */
	
	
	
	
	
	
	
	
	
	
	
}
