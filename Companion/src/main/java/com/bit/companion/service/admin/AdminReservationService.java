package com.bit.companion.service.admin;

import org.springframework.ui.Model;

import com.bit.companion.common.Search;

public interface AdminReservationService {

	//reservation list
	void list(Model model, int page, int range, String searchType, String keyword, Search search);
	
	//hotelservice list
	void service(Model model);
	
	//reservation detail
	void detail(Model model, int reserve_id);

}
