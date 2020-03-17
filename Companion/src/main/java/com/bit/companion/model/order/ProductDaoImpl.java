package com.bit.companion.model.order;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.order.ProductVo;

@Repository
public class ProductDaoImpl implements ProductDao{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ProductVo> ProductSelectAll() throws SQLException {
		return sqlSession.selectList("product.ProductSelectAll");
	}
 
	@Override
	public ProductVo ProductDetailOne(int product_id) throws SQLException {
		System.out.println(sqlSession);
		return sqlSession.selectOne("product.ProductDetailOne",product_id);
	}


}
