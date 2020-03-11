package com.bit.companion.service.admin;

import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.model.admin.AdminDao;
import com.bit.companion.model.entity.admin.AdminNoticeVo;

@Service
public class AdminServiceImpl implements AdminService {
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired
	AdminDao adminDao;
	
	@Override
	public void list(Model model) {
//		log.info("list service run..."+adminDao);
		try {
			List<AdminNoticeVo> list = adminDao.selectAll();
			model.addAttribute("list",list);
//			log.info("list: "+list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
