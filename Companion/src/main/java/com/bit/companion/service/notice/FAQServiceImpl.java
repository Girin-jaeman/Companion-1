package com.bit.companion.service.notice;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.common.Pagination;
import com.bit.companion.model.entity.notice.EventVo;
import com.bit.companion.model.entity.notice.FAQVo;
import com.bit.companion.model.notice.FAQDao;

@Service
public class FAQServiceImpl implements FAQService {
	@Autowired
	FAQDao faqDao;
	
	@Override
	public void list(Model model, int page, int range) {
		try {
			// Total list Count
			int listCnt = faqDao.selectTotal();
			
			// Pagination
			Pagination pagination = new Pagination();
			pagination.pageInfo(page, range, listCnt);
			
			// List
			List<FAQVo> list = faqDao.selectAll(pagination);
			
			// addAttribute
			model.addAttribute("list",list);
			model.addAttribute("pagination",pagination);
			model.addAttribute("total",faqDao.selectTotal());
		}catch(SQLException e){}
	}

}
