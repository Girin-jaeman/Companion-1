package com.bit.companion.service.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.companion.model.mypage.MypageDao;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	MypageDao mypageDao;
	
	@Override
	public void pwChange(String pw_change, String id_chk) {
		mypageDao.pwChange(pw_change,id_chk);
	}

}
