package com.bit.companion.service.admin;

import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.common.ChartDate;
import com.bit.companion.controller.admin.AdminHomeController;
import com.bit.companion.model.admin.AdminHomeDao;
import com.bit.companion.model.entity.admin.PaymentVo;

@Service
public class AdminHomeServiceImpl implements AdminHomeService {
	private static final Logger log=LoggerFactory.getLogger(AdminHomeController.class);

	@Autowired
	AdminHomeDao adminHomeDao;
	
	@Override
	public void list(Model model) {
		ChartDate chartDate = new ChartDate();
		try {
			chartDate.chartDate();
			String today = chartDate.getToday();
			log.info("service:chartDate:today:"+today);
			log.info("service:daily_sum:");
			
			PaymentVo todaySum = adminHomeDao.selectToday(chartDate);
			PaymentVo today_1Sum = adminHomeDao.selectToday_1(chartDate);
			PaymentVo today_2Sum = adminHomeDao.selectToday_2(chartDate);
			PaymentVo today_3Sum = adminHomeDao.selectToday_3(chartDate);
			PaymentVo today_4Sum = adminHomeDao.selectToday_4(chartDate);
			PaymentVo today_5Sum = adminHomeDao.selectToday_5(chartDate);
			PaymentVo today_6Sum = adminHomeDao.selectToday_6(chartDate);
			model.addAttribute("todaySum",todaySum);
			model.addAttribute("today_1Sum",today_1Sum);
			model.addAttribute("today_2Sum",today_2Sum);
			model.addAttribute("today_3Sum",today_3Sum);
			model.addAttribute("today_4Sum",today_4Sum);
			model.addAttribute("today_5Sum",today_5Sum);
			model.addAttribute("today_6Sum",today_6Sum);
			model.addAttribute("chartDate", chartDate);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
