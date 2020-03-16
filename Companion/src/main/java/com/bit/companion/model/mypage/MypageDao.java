package com.bit.companion.model.mypage;

import com.bit.companion.model.entity.mypage.MypageVo;

public interface MypageDao {

	void pwChange(String pw_change, String id_chk);
}
