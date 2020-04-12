package com.bit.companion.model.login;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.login.LoginVo;
import com.bit.companion.model.entity.login.MemberVo;

@Repository
public class LoginDaoImpl implements LoginDao {

	@Autowired
	SqlSession sqlSession;

//	�α���üũ
	@Override
	public boolean loginChk(LoginVo bean) {
		String name=sqlSession.selectOne("login.loginChk",bean);
		return (name==null) ? false : true;
	}

//	�α��� ����
	@Override
	public MemberVo infoLogin(LoginVo bean) {
		return sqlSession.selectOne("login.loginInfo",bean);
	}

//	�α׾ƿ�
	@Override
	public void logout(HttpSession session) {
		
	}

	@Override
	public int findIDCheck(String name_check, String phone_check) {
		HashMap<String,String> idInfo=new HashMap<>();
		idInfo.put("name_check", name_check);
		idInfo.put("phone_check", phone_check);
		return sqlSession.selectOne("login.findIDCheck",idInfo);
	}

	@Override
	public String findIDresult(String name_check, String phone_check) {
		HashMap<String,String> idInfo=new HashMap<>();
		idInfo.put("name_check", name_check);
		idInfo.put("phone_check", phone_check);
		return sqlSession.selectOne("login.findID",idInfo);
	}

}
