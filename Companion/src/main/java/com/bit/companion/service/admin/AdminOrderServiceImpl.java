package com.bit.companion.service.admin;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.model.admin.AdminOrderDao;
import com.bit.companion.model.entity.admin.AdminOrderVo;

@Service
public class AdminOrderServiceImpl implements AdminOrderService {
	@Autowired
	AdminOrderDao adminOrderDao;

	
	@Override
	public void list(Model model) {
		try {
			List<AdminOrderVo> list = adminOrderDao.selectAll();
			model.addAttribute("list",list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
