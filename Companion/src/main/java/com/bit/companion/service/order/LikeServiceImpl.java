package com.bit.companion.service.order;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.model.entity.order.LikeVo;
import com.bit.companion.model.order.LikeDao;

@Service
public class LikeServiceImpl implements LikeService {

	@Autowired
	LikeDao likedao;
	
	@Override
	public void likeUpdate(Model model,int product_id,String member_id) {
		int list; 
		try {
			list = likedao.likeInsert(product_id, member_id);
			model.addAttribute("likeinsert",list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void inquiry(Model model, int product_id, String member_id) {
		
	}

	@Override
	public void productLikeInquiry(Model model, int product_id) {
		
	}

	@Override
	public void likeDelete(Model model, int product_id, String member_id) {
		
	}



}
