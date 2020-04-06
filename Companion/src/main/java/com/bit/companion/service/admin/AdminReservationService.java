package com.bit.companion.service.admin;

import org.springframework.ui.Model;

public interface AdminReservationService {

	//reservation list
	void list(Model model);
	//hotelservice list
	void service(Model model);
	
	//reservation detail
	void detail(Model model, int reserve_id);

}
