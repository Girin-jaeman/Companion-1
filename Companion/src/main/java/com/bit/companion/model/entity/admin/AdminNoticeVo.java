package com.bit.companion.model.entity.admin;

import java.sql.Date;

import lombok.Data;

@Data
public class AdminNoticeVo {
	private int board_id;
	private int article_id;
	private String member_id;
	private String article_title;
	private String article_content;
	private Date article_date;
	private int article_count;
	private String article_image;
	
}
