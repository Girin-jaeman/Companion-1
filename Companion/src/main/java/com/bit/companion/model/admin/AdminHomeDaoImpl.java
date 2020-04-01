package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.admin.AdminHomeVo;

@Repository
public class AdminHomeDaoImpl implements AdminHomeDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<AdminHomeVo> selectAll(AdminHomeVo adminHomeVo) throws SQLException {
		
		return sqlSession.selectList("adminHome.selectAll",adminHomeVo);
	}

}
