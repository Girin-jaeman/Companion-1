package com.bit.companion.service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.companion.model.admin.AdminEventDao;

@Service
public class AdminEventServiceImpl implements AdminEventService{
	
	@Autowired
	AdminEventDao adminEventDao;
}
