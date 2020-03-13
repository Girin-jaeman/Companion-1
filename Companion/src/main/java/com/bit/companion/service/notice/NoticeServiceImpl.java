package com.bit.companion.service.notice;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.common.Pagination;
import com.bit.companion.model.entity.notice.NoticeVo;
import com.bit.companion.model.notice.NoticeDao;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	NoticeDao noticeDao;

	@Override
	public void list(Model model, int page, int range) {
		try {
			// 전체 게시글 개수
			int listCnt = noticeDao.selectTotal();
			
			// Pagination 객체생성
			Pagination pagination = new Pagination();
			pagination.pageInfo(page,range,listCnt);
			
			List<NoticeVo> list = noticeDao.selectAll(pagination);
			
			// addAttribute
			model.addAttribute("list",list);
			model.addAttribute("pagination",pagination);
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
