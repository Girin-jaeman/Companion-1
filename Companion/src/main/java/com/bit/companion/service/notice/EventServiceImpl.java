package com.bit.companion.service.notice;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.companion.model.notice.EventDao;

@Service
public class EventServiceImpl implements EventService {
	EventDao eventDao;
	@Override
	public void list(Model model, int page, int range) {
		
	}

}
