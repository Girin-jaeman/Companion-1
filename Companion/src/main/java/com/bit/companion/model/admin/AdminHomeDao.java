package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.common.ChartDate;
import com.bit.companion.model.entity.admin.PaymentVo;

public interface AdminHomeDao {

	PaymentVo selectToday(ChartDate chartDate) throws SQLException;
	PaymentVo selectToday_1(ChartDate chartDate) throws SQLException;
	PaymentVo selectToday_2(ChartDate chartDate) throws SQLException;
	PaymentVo selectToday_3(ChartDate chartDate) throws SQLException;
	PaymentVo selectToday_4(ChartDate chartDate) throws SQLException;
	PaymentVo selectToday_5(ChartDate chartDate) throws SQLException;
	PaymentVo selectToday_6(ChartDate chartDate) throws SQLException;
	PaymentVo selectMonth(ChartDate chartDate) throws SQLException;
	PaymentVo selectMonth_1(ChartDate chartDate) throws SQLException;
	PaymentVo selectMonth_2(ChartDate chartDate) throws SQLException;
	PaymentVo selectMonth_3(ChartDate chartDate) throws SQLException;
	PaymentVo selectMonth_4(ChartDate chartDate) throws SQLException;
	PaymentVo selectMonth_5(ChartDate chartDate) throws SQLException;
	PaymentVo selectMonth_6(ChartDate chartDate) throws SQLException;
}
