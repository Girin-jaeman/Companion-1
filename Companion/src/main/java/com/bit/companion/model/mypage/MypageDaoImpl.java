package com.bit.companion.model.mypage;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MypageDaoImpl implements MypageDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	@Update("update member set member_pw=#{pw_change} where member_id=#{id_chk}")
	public void pwChange(@Param("pw_change")String pw_change,@Param("id_chk") String id_chk) {}
	

}
