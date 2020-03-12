package com.bit.companion.model.hotel;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.hotel.HotelVo;

@Repository
public class HotelDaoImpl implements HotelDao {
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	SqlSessionFactory sqlSessionFactory;
	
	@Override
	public List<HotelVo> selectAll() throws SQLException {
		log.info("sqlSession run..."+sqlSessionFactory);
		return sqlSession.selectList("hotel.selectAll");
	}

	@Override
	public void insertOne(HotelVo bean)  throws SQLException {
		sqlSession.insert("hotel.insertOne",bean);
	}

}
