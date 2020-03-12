package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.admin.AdminNoticeVo;

public interface AdminDao {

		List<AdminNoticeVo> selectAll() throws SQLException;
		void insertOne(AdminNoticeVo bean) throws SQLException;
}
