package com.bit.companion.model.admin;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminEventDaoImpl implements AdminEventDao{

	@Autowired
	SqlSession sqlSession;
}
