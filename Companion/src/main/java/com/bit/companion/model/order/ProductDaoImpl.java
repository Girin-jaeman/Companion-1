package com.bit.companion.model.order;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.order.ProductVo;

@Repository
public class ProductDaoImpl implements ProductDao{
	Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ProductVo> ProductSelectAll() throws SQLException {
		return sqlSession.selectList("product.ProductSelectAll");
	}
 
	@Override
	public ProductVo ProductDetailOne(int product_id) throws SQLException {
		return sqlSession.selectOne("product.ProductDetailOne",product_id);
	}

	@Override
	public List<ProductVo> ProductCategorySelect(int category_id) throws SQLException {
		return sqlSession.selectList("product.ProductCategorySelect",category_id);
	}

	/*
	 * @Override public List<ProductVo> ProductCategorySelect(int category_id)
	 * throws SQLException { return
	 * sqlSession.selectList("product.ProductCategorySelect",category_id); }
	 */


}
