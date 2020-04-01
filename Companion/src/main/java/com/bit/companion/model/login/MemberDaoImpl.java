package com.bit.companion.model.login;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.companion.model.entity.login.MemberVo;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertOne(MemberVo bean) {
		sqlSession.insert("member.insertOne",bean);
	}

	@Override
	public int idChk(String member_id) {
		int result=sqlSession.selectOne("member.idChk",member_id);
		return result;
	}

	@Override
	public int emailChk(String k_email) {
		int result=sqlSession.selectOne("member.emailChk",k_email);
		return result;
	}

	@Override
	public String emailFindId(String k_email) {
		String member_id=sqlSession.selectOne("member.emailFindId",k_email);
		return member_id;
	}

	@Override
	public String emailFindPw(String k_email) {
		String member_pw=sqlSession.selectOne("member.emailFindPw",k_email);
		return member_pw;
	}

	@Override
	public String emailFindName(String k_email) {
		String member_name=sqlSession.selectOne("member.emailFindName",k_email);
		return member_name;
	}


}
