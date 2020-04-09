package com.bit.companion.service.order;

import java.sql.SQLException;
import java.util.List;

import org.springframework.ui.Model;

public interface ProductService {

	void list(Model model);
	void category(Model model,int category_id);
	void detail(Model model,int product_id);
	
	void productRecommend(Model model,int product_id);

	void productReview(Model model, int product_id);
	void Alignment(Model model,int category_id);
	void AlignmentOrderBySelling(Model model,int category_id);
	void AlignmentOrderByLowPrice(Model model,int category_id);
	void AlignmentOrderByHighPrice(Model model,int category_id);
	void AlignmentOrderByDate(Model model,int category_id);
	
	//countPage
	//상품 총 개수
	int count(Model model,int category_id) throws SQLException, Exception;

	void countPage(Model model,int category_id,int displayPost,int postNum) throws SQLException;
	
	//게시물 목록 + 페이징
	List listPage(Model model,int displayPost,int postNum,int category_id) throws Exception;
	
	
}