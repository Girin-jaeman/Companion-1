package com.bit.companion.service.admin;

import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.model.admin.AdminReservationDao;
import com.bit.companion.model.entity.admin.AdminReservationVo;

@Service
public class AdminReservationServiceImpl implements AdminReservationService {
	Logger logger=LoggerFactory.getLogger(getClass());
	
	@Autowired
	AdminReservationDao adminReservationDao;

	@Override
	public void list(Model model) {
		try {
			List<AdminReservationVo> list=adminReservationDao.selectAll();
			model.addAttribute("adminReservationList", list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void detail(Model model, String member_id) {
		try {
			model.addAttribute("adminReservationOne", adminReservationDao.selectOne(member_id));
			System.out.println(adminReservationDao.selectOne(member_id));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}


}
