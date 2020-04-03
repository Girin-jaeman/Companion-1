package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.admin.AdminReservationVo;

@Repository
public class AdminReservationDaoImpl implements AdminReservationDao {
	Logger logger=LoggerFactory.getLogger(getClass());
	
	@Autowired
	SqlSession sqlsession;
	
	// reservation list - selectAll
	@Override
	public List<AdminReservationVo> selectAll() throws SQLException {
		return sqlsession.selectList("adminReservation.selectAll");
	}
	// reservation - detail
	@Override
	public AdminReservationVo selectOne(String member_id) throws SQLException {
		// TODO Auto-generated method stub
		return sqlsession.selectOne("adminReservation.selectOne", member_id);
	}

}
