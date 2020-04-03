package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.common.Search;
import com.bit.companion.model.entity.admin.AdminReservationVo;

public interface AdminReservationDao {

	// reservation list
	List<AdminReservationVo> selectAll() throws SQLException;
	
	// reservation detail
	AdminReservationVo selectOne(String member_id) throws SQLException;
}
