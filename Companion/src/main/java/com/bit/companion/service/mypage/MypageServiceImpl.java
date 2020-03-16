package com.bit.companion.service.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.companion.model.entity.mypage.MypageVo;
import com.bit.companion.model.mypage.MypageDao;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	MypageDao mypageDao;
	
	@Override
	public int pwChange(String pw_change,String id_chk) {
		return mypageDao.pwChange(pw_change,id_chk);
	}

}
