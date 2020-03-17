package com.bit.companion.service.admin;

import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.model.admin.NoticeDao;
import com.bit.companion.model.entity.admin.AdminArticleVo;

@Service
public class AdminServiceImpl implements AdminService {
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired
	NoticeDao adminDao;
	
	// 공지사항 리스트 - selectAll
	@Override
	public void list(Model model) {
		try {
			List<AdminArticleVo> list = adminDao.selectAll();
			model.addAttribute("adminNoticeList",list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 공지사항 상세 - selectOne
	@Override
	public void detail(Model model, int article_id) {
		try {
			//count?
			model.addAttribute("adminNoticeOne", adminDao.selectOne(article_id));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 공지사항 입력 - insertOne
	@Override
	public void insert(AdminArticleVo bean) {
		try {
			adminDao.insertOne(bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 공지사항 수정 - updateOne
	@Override
	public void update(AdminArticleVo bean) {
		try {
			adminDao.updateOne(bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 공지사항 삭제 - deleteOne
	@Override
	public void delete(AdminArticleVo bean) {
		try {
			adminDao.deleteOne(bean);
		} catch (SQLException e) {
		}
	}

}
