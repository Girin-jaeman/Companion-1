package com.bit.companion.model.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.bit.companion.model.entity.mypage.MypageCartVo;
import com.bit.companion.model.entity.mypage.MypageQuestionVo;
import com.bit.companion.model.entity.mypage.MypageReserveVo;

public interface MypageDao {

	int pwChange(String pw_change,String id_chk);

	int telChange(String tel_change, String id_chk);

	int phoneChange(String phone_change, String id_chk);

	int emailChange(String email_change, String id_chk);

	int addrChange(String addr1_change, String addr2_change, String addr3_change, String id_chk);

	List<MypageQuestionVo> questionList(HttpSession session);

	List<MypageReserveVo> reserveList(HttpSession session);

	List<MypageCartVo> cartList(HttpSession session);
	
}
