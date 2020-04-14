package com.bit.companion.model.login;

import javax.servlet.http.HttpSession;

import com.bit.companion.model.entity.login.LoginVo;
import com.bit.companion.model.entity.login.MemberVo;

public interface LoginDao {

	public boolean loginChk(LoginVo bean);
	public MemberVo infoLogin(LoginVo bean);
	public void logout(HttpSession session);
	public int findIDCheck(String name_check, String phone_check);
	public String findIDresult(String name_check, String phone_check);
	public int findPWCheck(String name_check, String id_check, String email_check);
	public void updateRandomPW(String name_check, String id_check, String email_check, String randomPW);
}
