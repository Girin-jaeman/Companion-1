package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.common.ChartDate;
import com.bit.companion.controller.admin.AdminHomeController;
import com.bit.companion.model.entity.admin.AdminPaymentVo;
import com.bit.companion.model.entity.order.ProductVo;

@Repository
public class AdminHomeDaoImpl implements AdminHomeDao {

	private static final Logger log=LoggerFactory.getLogger(AdminHomeController.class);
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public AdminPaymentVo selectToday(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectToday",chartDate);
	}

	@Override
	public AdminPaymentVo selectToday_1(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectToday_1",chartDate);
	}

	@Override
	public AdminPaymentVo selectToday_2(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectToday_2",chartDate);
	}

	@Override
	public AdminPaymentVo selectToday_3(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectToday_3",chartDate);
	}

	@Override
	public AdminPaymentVo selectToday_4(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectToday_4",chartDate);
	}

	@Override
	public AdminPaymentVo selectToday_5(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectToday_5",chartDate);
	}

	@Override
	public AdminPaymentVo selectToday_6(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectToday_6",chartDate);
	}

	@Override
	public AdminPaymentVo selectMonth(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectMonth",chartDate);
	}

	@Override
	public AdminPaymentVo selectMonth_1(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectMonth_1",chartDate);
	}

	@Override
	public AdminPaymentVo selectMonth_2(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectMonth_2",chartDate);
	}

	@Override
	public AdminPaymentVo selectMonth_3(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectMonth_3",chartDate);
	}

	@Override
	public AdminPaymentVo selectMonth_4(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectMonth_4",chartDate);
	}

	@Override
	public AdminPaymentVo selectMonth_5(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectMonth_5",chartDate);
	}

	@Override
	public AdminPaymentVo selectMonth_6(ChartDate chartDate) throws SQLException {
		return sqlSession.selectOne("adminHome.selectMonth_6",chartDate);
	}

	@Override
	public List<ProductVo> selectProduct(ChartDate chartDate) throws SQLException {
		return sqlSession.selectList("adminHome.selectProduct");
	}

}
