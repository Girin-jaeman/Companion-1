package com.bit.companion.service.notice;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.model.entity.notice.NoticeVo;
import com.bit.companion.model.notice.NoticeDao;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	NoticeDao noticeDao;

	@Override
	public void list(Model model) {
		try {
			List<NoticeVo> list = noticeDao.selectAll();
			model.addAttribute("list",list);
			model.addAttribute("total",noticeDao.selectTotal());
		}catch(SQLException e){
			
		}
		
	}

	@Override
	public void detail(Model model, int ntc_id) {
		try {
			model.addAttribute("bean",noticeDao.selectOne(ntc_id));
		}catch(SQLException e) {
			
		}
	}

}
