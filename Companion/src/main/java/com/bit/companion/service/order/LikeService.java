package com.bit.companion.service.order;

import java.util.Map;

import org.springframework.ui.Model;

import com.bit.companion.model.entity.order.LikeVo;

public interface LikeService {
//	void inquiry(Model model,int product_id,String member_id);
//	void likeUpdate(Model model, int product_id, String member_id);
//	void productLikeInquiry(Model model,int product_id);
//	void likeDelete(Model model, int product_id, String member_id);

	int likeInsert(LikeVo likevo) throws Exception;
} 
 