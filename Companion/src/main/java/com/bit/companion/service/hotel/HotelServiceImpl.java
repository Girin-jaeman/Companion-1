package com.bit.companion.service.hotel;

import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.model.entity.hotel.HotelVo;
import com.bit.companion.model.hotel.HotelDao;

@Service
public class HotelServiceImpl implements HotelService {
	Logger log=LoggerFactory.getLogger(getClass());

	@Autowired
	HotelDao hotelDao;
	
	@Override
	public void list(Model model) {
		try {
			List<HotelVo> list = hotelDao.selectAll();
			log.info("list service run..."+list);
			model.addAttribute("list",list);
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}

}
