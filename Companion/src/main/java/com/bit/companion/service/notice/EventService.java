package com.bit.companion.service.notice;

import org.springframework.ui.Model;

public interface EventService {

	void list(Model model, int page, int range);

	void detail(Model model, int article_id);

	void count(int article_id);

}
