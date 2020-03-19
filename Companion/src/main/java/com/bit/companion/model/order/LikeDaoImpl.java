package com.bit.companion.model.order;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.order.LikeVo;

@Repository
public class LikeDaoImpl implements LikeDao {

	@Override
	public List<LikeVo> likeClickNum(int product_id, String member_id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int likeInsert(int product_id, String member_id) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int likeDelete(int product_id, String member_id) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<LikeVo> productLikeNum(int product_id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}



}
