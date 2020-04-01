package com.bit.companion.model.login;

import com.bit.companion.model.entity.login.MemberVo;

public interface MemberDao {

	void insertOne(MemberVo bean);
	int idChk(String member_id);
	int emailChk(String k_email);
	String emailFindId(String k_email);
	String emailFindPw(String k_email);
	String emailFindName(String k_email);

}
