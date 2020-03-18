package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.admin.AdminCategoryVo;

@Repository
public class AdminProductDaoImpl implements AdminProductDao{
	Logger logger=LoggerFactory.getLogger(getClass());
	
	@Autowired
	SqlSession sqlsession;
	
	// product add category - selectCategory
	@Override
	public List<AdminCategoryVo> selectCategory() throws SQLException {
		return sqlsession.selectList("adminProduct.selectCategory");
	}

}
