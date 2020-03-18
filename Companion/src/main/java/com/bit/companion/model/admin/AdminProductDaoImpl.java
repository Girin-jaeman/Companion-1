package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.admin.AdminCategoryVo;
import com.bit.companion.model.entity.admin.AdminProductVo;

@Repository
public class AdminProductDaoImpl implements AdminProductDao{
	Logger logger=LoggerFactory.getLogger(getClass());
	
	@Autowired
	SqlSession sqlsession;
	
	// product add page category list - selectCategory
	@Override
	public List<AdminCategoryVo> selectCategory() throws SQLException {
		return sqlsession.selectList("adminProduct.selectCategory");
	}

	// product add - insertOne
	@Override
	public void insertOne(AdminProductVo bean) throws SQLException {
		sqlsession.insert("adminProduct.insertOne",bean);
	}

	// product list - selectAll
	@Override
	public List<AdminProductVo> selectAll() throws SQLException {
		return sqlsession.selectList("adminProduct.selectAll");
	}

	// product detail - selectOne
	@Override
	public AdminProductVo selectOne(int product_id) throws SQLException {
		return sqlsession.selectOne("adminProduct.selectOne",product_id);
	}

}
