package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.admin.AdminMemberViewVo;

@Repository
public class AdminMemberDaoImpl implements AdminMemberDao{
	Logger logger=LoggerFactory.getLogger(getClass());
	
	@Autowired
	SqlSession sqlsession;

	// member list
	@Override
	public List<AdminMemberViewVo> selectAll() throws SQLException {
		return sqlsession.selectList("adminMember.selectAll");
	}

	// member detail
	@Override
	public AdminMemberViewVo selectOne(AdminMemberViewVo bean) throws SQLException {
		return sqlsession.selectOne("adminMember.selectOne", bean);
	}

	// member update
	@Override
	public int updateOne(AdminMemberViewVo bean) throws SQLException {
		return sqlsession.update("adminMember.updateOne", bean);
	}
	
	
}
