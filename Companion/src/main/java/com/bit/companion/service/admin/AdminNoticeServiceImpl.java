package com.bit.companion.service.admin;

import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.common.Pagination;
import com.bit.companion.model.admin.AdminNoticeDao;
import com.bit.companion.model.entity.admin.AdminArticleVo;
import com.bit.companion.model.notice.NoticeDao;

@Service
public class AdminNoticeServiceImpl implements AdminNoticeService {
	Logger logger=LoggerFactory.getLogger(getClass());
	
	@Autowired
	AdminNoticeDao adminNoticeDao;
	
	// notice list - selectAll
	@Override
	public void list(Model model,int page, int range) {
		try {
			// Total list Count
			int listCnt = adminNoticeDao.selectTotal();
			
			// Pagination
			Pagination pagination = new Pagination();
			pagination.pageInfo(page,range,listCnt);
			
			List<AdminArticleVo> list = adminNoticeDao.selectAll(pagination);
			
			model.addAttribute("adminNoticeList",list);
			model.addAttribute("pagination",pagination);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// notice detail - selectOne
	@Override
	public void detail(Model model, int article_id) {
		try {
			//count?
			model.addAttribute("adminNoticeOne", adminNoticeDao.selectOne(article_id));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// notice add - insertOne
	@Override
	public void insert(AdminArticleVo bean) {
		try {
			adminNoticeDao.insertOne(bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// notice edit - updateOne
	@Override
	public void update(AdminArticleVo bean) {
		try {
			adminNoticeDao.updateOne(bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// notice delete - deleteOne
	@Override
	public void delete(int article_id) {
		try {
			adminNoticeDao.deleteOne(article_id);
		} catch (SQLException e) {
		}
	}

}
