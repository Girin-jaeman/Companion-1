package com.bit.companion.service.admin;

import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.common.Search;
import com.bit.companion.model.admin.AdminProductDao;
import com.bit.companion.model.entity.admin.AdminProductViewVo;
import com.bit.companion.model.entity.admin.AdminCategoryVo;
import com.bit.companion.model.entity.admin.AdminProductVo;

import net.sf.json.JSONArray;

@Service
public class AdminProductServiceImpl implements AdminProductService{
	Logger logger=LoggerFactory.getLogger(getClass());
	
	@Autowired
	AdminProductDao adminProductDao;
	
	// category list (product add page) - selectCategory
	@Override
	public void category(Model model) {
		try {
			List<AdminCategoryVo> category = adminProductDao.selectCategory();
			model.addAttribute("adminProductCategory",JSONArray.fromObject(category));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// product list - selectAll
	@Override
	public void list(Model model, int page, int range, String searchType, String keyword, Search search) {
		try {
			// Total list Count
			int listCnt = adminProductDao.selectTotal(search);
			
			// Pagination + Search
			search.setSearchType(searchType);
			search.setKeyword(keyword);
			search.pageInfo(page, range, listCnt);

			// product List
			List<AdminProductViewVo> list=adminProductDao.selectAll(search);
			
			model.addAttribute("search", search);
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

	// product edit - updateOne
	@Override
	public void update(AdminProductVo bean) {
		try {
			adminProductDao.updateOne(bean);
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}

	// product delete - deleteOne
	@Override
	public void delete(int product_id) {
		try {
			adminProductDao.deleteOne(product_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


}
