package com.bit.companion.service.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.companion.model.entity.login.LoginVo;
import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.model.login.LoginDao;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDao loginDao;
	
	@Override
	public boolean loginChk(LoginVo bean, HttpSession session) {
		boolean result=loginDao.loginChk(bean);
//		성공시 세션에 로그인 정보 등록
		if(result) {
			MemberVo bean2=infoLogin(bean);
			session.setAttribute("memberVo", bean2);
		}
		return result;
	}

	@Override
	public MemberVo infoLogin(LoginVo bean) {
		return loginDao.infoLogin(bean);
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

}
