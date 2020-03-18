package com.bit.companion.service.notice;

import org.springframework.ui.Model;

public interface FAQService {

	void list(Model model, int page, int range);

}
