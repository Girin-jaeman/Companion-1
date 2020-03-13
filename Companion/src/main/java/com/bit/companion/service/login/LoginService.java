package com.bit.companion.service.login;

import javax.servlet.http.HttpSession;

import com.bit.companion.model.entity.login.LoginVo;
import com.bit.companion.model.entity.login.MemberVo;

public interface LoginService {

	boolean loginChk(LoginVo bean, HttpSession session);
	MemberVo infoLogin(LoginVo bean);
	void logout(HttpSession session);
}
