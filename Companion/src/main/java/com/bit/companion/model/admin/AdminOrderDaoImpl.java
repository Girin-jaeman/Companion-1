package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.admin.AdminOrderDetailVo;
import com.bit.companion.model.entity.admin.AdminOrderVo;

@Repository
public class AdminOrderDaoImpl implements AdminOrderDao {
	Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<AdminOrderVo> selectAll() throws SQLException {
		return sqlSession.selectList("adminOrder.selectAll");
	}

	@Override
	public AdminOrderVo selectOne(int order_id) throws SQLException {
		return sqlSession.selectOne("adminOrder.selectOne",order_id);
	}

	@Override
	public List<AdminOrderDetailVo> selectOneDetail(int order_id) throws SQLException {
		return sqlSession.selectList("adminOrder.selectOneDetail",order_id);
	}

}
