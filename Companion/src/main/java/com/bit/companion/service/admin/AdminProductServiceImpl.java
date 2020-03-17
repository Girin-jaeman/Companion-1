package com.bit.companion.service.admin;

import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.model.admin.AdminProductDao;
import com.bit.companion.model.entity.admin.AdminCategoryVo;

@Service
public class AdminProductServiceImpl implements AdminProductService{
	Logger logger=LoggerFactory.getLogger(getClass());
	
	@Autowired
	AdminProductDao adminProductDao;
	
	// 카테고리 - selectCategory 
	@Override
	public void category(Model model) {
		try {
			List<AdminCategoryVo> list = adminProductDao.selectCategory();
			model.addAttribute("adminProductCategory",list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
