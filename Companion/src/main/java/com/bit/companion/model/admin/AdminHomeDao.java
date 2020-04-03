package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.common.ChartDate;
import com.bit.companion.model.entity.admin.AdminPaymentVo;
import com.bit.companion.model.entity.order.ProductVo;

public interface AdminHomeDao {

	List<ProductVo> selectProduct(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectToday(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectToday_1(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectToday_2(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectToday_3(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectToday_4(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectToday_5(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectToday_6(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectMonth(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectMonth_1(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectMonth_2(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectMonth_3(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectMonth_4(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectMonth_5(ChartDate chartDate) throws SQLException;
	AdminPaymentVo selectMonth_6(ChartDate chartDate) throws SQLException;
}
