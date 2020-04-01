package com.bit.companion.service.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.model.login.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao memberDao;
	
	@Override
	public void insert(MemberVo bean) {
		memberDao.insertOne(bean);
	}

	@Override
	public int idChk(String member_id) {
		int result=memberDao.idChk(member_id);
		return result;
	}

	@Override
	public int emailChk(String k_email) {
		int result=memberDao.emailChk(k_email);
		return result;
	}

	@Override
	public String emailFindId(String k_email) {
		String member_id=memberDao.emailFindId(k_email);
		return member_id;
	}

	@Override
	public String emailFindPw(String k_email) {
		String member_pw=memberDao.emailFindPw(k_email);
		return member_pw;
	}

	@Override
	public String emailFindName(String k_email) {
		String member_name=memberDao.emailFindName(k_email);
		return member_name;
	}


	
}
