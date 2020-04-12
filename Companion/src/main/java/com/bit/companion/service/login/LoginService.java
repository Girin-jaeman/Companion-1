package com.bit.companion.service.login;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import com.bit.companion.model.entity.login.LoginVo;
import com.bit.companion.model.entity.login.MemberVo;

public interface LoginService {

	boolean loginChk(LoginVo bean, HttpSession session);
	MemberVo infoLogin(LoginVo bean);
	void logout(HttpSession session);
	
	/* 카카오 토큰획득 */
	String getAccessToken(String authorize_code);
	/* 카카오 유저정보 획득 */
	HashMap<String,Object> getUserInfo(String access_Token);
	/* 카카오 로그아웃 */
	void kakaoLogout(String access_Token);

	/* id찾기중 일치하는 것이 있는지 확인 */
	int findIDCheck(String name_check, String phone_check);

	/* id찾기 */
	String findIDresult(String name_check, String phone_check);

}
