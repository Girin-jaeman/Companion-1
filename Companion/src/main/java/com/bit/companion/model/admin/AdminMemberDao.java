package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import com.bit.companion.model.entity.admin.AdminMemberViewVo;

public interface AdminMemberDao {

	// member list
	List<AdminMemberViewVo> selectAll() throws SQLException;
	
	// member detail
	AdminMemberViewVo selectOne(String member_id) throws SQLException;
	
}
