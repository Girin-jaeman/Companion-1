package com.bit.companion.service.notice;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.common.Pagination;
import com.bit.companion.model.entity.notice.EventVo;
import com.bit.companion.model.notice.EventDao;

@Service
public class EventServiceImpl implements EventService {
	@Autowired
	EventDao eventDao;
	
	@Override
	public void list(Model model, int page, int range) {
		try {
			// Total list Count
			int listCnt = eventDao.selectTotal();
			
			// Pagination
			Pagination pagination = new Pagination();
			pagination.pageInfo(page, range, listCnt);
			
			// List
			List<EventVo> list = eventDao.selectAll(pagination);
			
			// addAttribute
			model.addAttribute("list",list);
			model.addAttribute("pagination",pagination);
			model.addAttribute("total",eventDao.selectTotal());
		}catch(SQLException e){}
	}

	@Override
	public void detail(Model model, int article_id) {
		try {
			model.addAttribute("bean",eventDao.selectOne(article_id));
		}catch(SQLException e) {}
	}

}
