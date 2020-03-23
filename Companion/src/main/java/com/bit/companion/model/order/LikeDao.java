package com.bit.companion.model.order;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.bit.companion.model.entity.order.LikeVo;

public interface LikeDao {
//	List<LikeVo> likeClickNum(int product_id, String member_id) throws SQLException;//추천중복 조회
//	int likeDelete(int product_id, String member_id) throws SQLException;//추천취소
//	List<LikeVo> productLikeNum(int product_id) throws SQLException;//상품 총 추천수
	List<LikeVo> likeTest() throws SQLException;
	void likeInsert(LikeVo likeVo) throws SQLException;//추천하기
}
