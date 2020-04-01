package com.bit.companion.service.order;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.model.entity.order.LikeVo;
import com.bit.companion.model.entity.order.OrderVo;
import com.bit.companion.model.order.LikeDao;

@Service
public class LikeServiceImpl implements LikeService {

	@Autowired
	LikeDao likedao;

	@Override
	public int likeInsert(LikeVo likeVo) throws Exception{
		int result;
		System.out.println("라이크 인설트 실행전...");
		result = likedao.likeInsert(likeVo);
		System.out.println("라이크 인설트 실행 후후후후..."); 
		return result; 
	} 

//	@Override
//	public void likeUpdate(Model model,int product_id,String member_id) {
//		int list; 
//		try {
//			list = likedao.likeInsert(product_id, member_id);
//			model.addAttribute("likeinsert",list);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		
//	}
//
//	@Override
//	public void inquiry(Model model, int product_id, String member_id) {
//		
//	}
//
//	@Override
//	public void productLikeInquiry(Model model, int product_id) {
//		
//	}
//
//	@Override
//	public void likeDelete(Model model, int product_id, String member_id) {
//		
//	}


}
