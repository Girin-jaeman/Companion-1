package com.bit.companion.model.mypage;

public interface MypageDao {

	int pwChange(String pw_change,String id_chk);

	int telChange(String tel_change, String id_chk);

	int phoneChange(String phone_change, String id_chk);

	int emailChange(String email_change, String id_chk);

	int addrChange(String addr1_change, String addr2_change, String addr3_change, String id_chk);
}
