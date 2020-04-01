package com.bit.companion.service.login;

import com.bit.companion.model.entity.login.MemberVo;

public interface MemberService {

	void insert(MemberVo bean);
	int idChk(String member_id);
	int emailChk(String k_email);
	String emailFindId(String k_email);
	String emailFindPw(String k_email);
	String emailFindName(String k_email);
}
