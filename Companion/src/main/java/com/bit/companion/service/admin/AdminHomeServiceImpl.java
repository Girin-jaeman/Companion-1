package com.bit.companion.service.admin;

import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.controller.admin.AdminArticleController;
import com.bit.companion.model.admin.AdminHomeDao;
import com.bit.companion.model.entity.admin.AdminHomeVo;

@Service
public class AdminHomeServiceImpl implements AdminHomeService {
	private static final Logger log=LoggerFactory.getLogger(AdminArticleController.class);

	@Autowired
	AdminHomeDao adminHomeDao;
	
	@Override
	public void list(Model model) {
		AdminHomeVo adminHomeVo = new AdminHomeVo();
		
		// List
		try {
			List<AdminHomeVo> list = adminHomeDao.selectAll(adminHomeVo);
			adminHomeVo.chartDate();
			String today = adminHomeVo.getToday();
			
			log.info("오늘:"+today);
			
			model.addAttribute("list",list);
			model.addAttribute("adminHomeVo",adminHomeVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
