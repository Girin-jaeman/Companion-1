package com.bit.companion.model.entity.admin;

import java.sql.Date;

import lombok.Data;

@Data
public class AdminNoticeVo {
	private int ntc_id;
	private String ntc_title;
	private String ntc_content;
	private Date ntc_date;
	private String ntc_img;
	private int ntc_cnt;
	
}
