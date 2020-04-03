package com.bit.companion.service.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.companion.model.entity.mypage.MypageCartVo;
import com.bit.companion.model.entity.mypage.MypageQuestionVo;
import com.bit.companion.model.entity.mypage.MypageReserveVo;
import com.bit.companion.model.mypage.MypageDao;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	MypageDao mypageDao;
	
	@Override
	public int pwChange(String pw_change,String id_chk) {
		return mypageDao.pwChange(pw_change,id_chk);
	}

	@Override
	public int telChange(String tel_change, String id_chk) {
		return mypageDao.telChange(tel_change,id_chk);
	}

	@Override
	public int phoneChange(String phone_change, String id_chk) {
		return mypageDao.phoneChange(phone_change,id_chk);
	}

	@Override
	public int emailChange(String email_change, String id_chk) {
		return mypageDao.emailChange(email_change,id_chk);
	}

	@Override
	public int addrChange(String addr1_change, String addr2_change, String addr3_change, String id_chk) {
		return mypageDao.addrChange(addr1_change,addr2_change,addr3_change,id_chk);
	}

	@Override
	public void questionList(HttpSession session) {
		List<MypageQuestionVo> questionList = mypageDao.questionList(session);
		session.setAttribute("questionList", questionList);
	}

	@Override
	public void reserveList(HttpSession session) {
		List<MypageReserveVo> reserveList = mypageDao.reserveList(session);
		session.setAttribute("reserveList", reserveList);
	}

	@Override
	public void cartList(HttpSession session) {
		List<MypageCartVo> cartList=mypageDao.cartList(session);
		session.setAttribute("cartList", cartList);
		
	}

}
