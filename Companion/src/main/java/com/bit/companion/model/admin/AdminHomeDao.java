package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.admin.AdminHomeVo;

public interface AdminHomeDao {

	List<AdminHomeVo> selectAll(AdminHomeVo adminHomeVo) throws SQLException;
}
