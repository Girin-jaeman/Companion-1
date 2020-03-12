package com.bit.companion.service.hotel;

import org.springframework.ui.Model;

import com.bit.companion.model.entity.hotel.HotelVo;

public interface HotelService {

	void list(Model model);

	void insert(HotelVo bean);

}
