package com.bit.companion.model.admin;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.admin.AdminProductViewVo;
import com.bit.companion.common.Pagination;
import com.bit.companion.common.Search;
import com.bit.companion.model.entity.admin.AdminCategoryVo;
import com.bit.companion.model.entity.admin.AdminProductVo;

@Repository
public class AdminProductDaoImpl implements AdminProductDao{
	Logger logger=LoggerFactory.getLogger(getClass());
	
	@Autowired
	SqlSession sqlsession;
	
	// category list (product add page) - selectCategory
	@Override
	public List<AdminCategoryVo> selectCategory() throws SQLException {
		return sqlsession.selectList("adminProduct.selectCategory");
	}
	
	// product list - selectAll
	@Override
	public List<AdminProductViewVo> selectAll(Search search) throws SQLException {
		return sqlsession.selectList("adminProduct.selectAll",search);
	}
	
	// product detail - selectOne
	@Override
	public AdminProductViewVo selectOne(int product_id) throws SQLException {
		return sqlsession.selectOne("adminProduct.selectOne",product_id);
	}

	// product add - insertOne
	@Override
	public void insertOne(AdminProductVo bean) throws SQLException {
		sqlsession.insert("adminProduct.insertOne",bean);
	}

	// product edit - updateOne
	@Override
	public int updateOne(AdminProductVo bean) throws SQLException {
		return sqlsession.update("adminProduct.updateOne",bean);
	}

	// product delete - deleteOne
	@Override
	public int deleteOne(int product_id) throws SQLException {
		return sqlsession.delete("adminProduct.deleteOne",product_id);
	}

	// product total - selectTotal
	@Override
	public int selectTotal(Search search) throws SQLException {
		return sqlsession.selectOne("adminProduct.selectTotal", search);
	}

}
