package com.bit.companion.service.notice;

import org.springframework.ui.Model;

public interface NoticeService {

	void list(Model model, int page, int range);

	void detail(Model model, int ntc_id);

}
