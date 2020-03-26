package com.bit.companion.service.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminMemberServiceImpl implements AdminMemberService{
	Logger logger=LoggerFactory.getLogger(getClass());
	
	@Autowired
	AdminMemberService adminMemberService;
	
}
