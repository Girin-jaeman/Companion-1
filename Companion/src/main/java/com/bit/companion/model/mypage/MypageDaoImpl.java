package com.bit.companion.model.mypage;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MypageDaoImpl implements MypageDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int pwChange(String pw_change, String id_chk) {
		HashMap<String,String> map=new HashMap<String,String>();
		map.put("pw_change", pw_change);
		map.put("id_chk", id_chk);
		return sqlSession.update("mypage.pwChange", map);
	}
	

}
