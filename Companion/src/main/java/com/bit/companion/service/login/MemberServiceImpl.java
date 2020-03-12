package com.bit.companion.service.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.model.login.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao memberdao;
	
	@Override
	public void insert(MemberVo bean) {
		memberdao.insertOne(bean);
	}

}
