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
import com.bit.companion.model.entity.admin.AdminProductVo;

import net.sf.json.JSONArray;

@Service
public class AdminProductServiceImpl implements AdminProductService{
	Logger logger=LoggerFactory.getLogger(getClass());
	
	@Autowired
	AdminProductDao adminProductDao;
	
	// product add page category list - selectCategory
	@Override
	public void category(Model model) {
		try {
			List<AdminCategoryVo> category = adminProductDao.selectCategory();
			//test value check
			//System.out.println(category.toString());
			model.addAttribute("adminProductCategory",JSONArray.fromObject(category));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// product add - insertOne
	@Override
	public void insert(AdminProductVo bean) {
		try {
			adminProductDao.insertOne(bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// product list - selectAll
	@Override
	public void list(Model model) {
		try {
			List<AdminProductVo> list=adminProductDao.selectAll();
			model.addAttribute("adminProductList",list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// product detail - selectOne
	@Override
	public void detail(Model model, int product_id) {
		try {
			model.addAttribute("adminProductOne", adminProductDao.selectOne(product_id));
			System.out.println( adminProductDao.selectOne(product_id).toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
