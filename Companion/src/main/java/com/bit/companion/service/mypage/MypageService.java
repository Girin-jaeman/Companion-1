package com.bit.companion.service.mypage;

import javax.servlet.http.HttpSession;

public interface MypageService {

	int pwChange(String pw_change,String id_chk);

	int telChange(String tel_change, String id_chk);

	int phoneChange(String phone_change, String id_chk);

	int emailChange(String email_change, String id_chk);

	int addrChange(String addr1_change, String addr2_change, String addr3_change, String id_chk);

	void questionList(HttpSession session);

}
