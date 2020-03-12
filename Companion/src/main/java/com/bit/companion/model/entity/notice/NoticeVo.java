package com.bit.companion.model.entity.notice;

import java.sql.Date;

public class NoticeVo {
	private int ntc_id;
	private String ntc_title;
	private String ntc_content;
	private Date ntc_date;
	private String ntc_img;
	private int ntc_cnt;
	
	public NoticeVo() {}

	public NoticeVo(int ntc_id, String ntc_title, String ntc_content, Date ntc_date, String ntc_img, int ntc_cnt) {
		super();
		this.ntc_id = ntc_id;
		this.ntc_title = ntc_title;
		this.ntc_content = ntc_content;
		this.ntc_date = ntc_date;
		this.ntc_img = ntc_img;
		this.ntc_cnt = ntc_cnt;
	}

	public int getNtc_id() {
		return ntc_id;
	}

	public void setNtc_id(int ntc_id) {
		this.ntc_id = ntc_id;
	}

	public String getNtc_title() {
		return ntc_title;
	}

	public void setNtc_title(String ntc_title) {
		this.ntc_title = ntc_title;
	}

	public String getNtc_content() {
		return ntc_content;
	}

	public void setNtc_content(String ntc_content) {
		this.ntc_content = ntc_content;
	}

	public Date getNtc_date() {
		return ntc_date;
	}

	public void setNtc_date(Date ntc_date) {
		this.ntc_date = ntc_date;
	}

	public String getNtc_img() {
		return ntc_img;
	}

	public void setNtc_img(String ntc_img) {
		this.ntc_img = ntc_img;
	}

	public int getNtc_cnt() {
		return ntc_cnt;
	}

	public void setNtc_cnt(int ntc_cnt) {
		this.ntc_cnt = ntc_cnt;
	}

	@Override
	public String toString() {
		return "NoticeVo [ntc_id=" + ntc_id + ", ntc_title=" + ntc_title + ", ntc_content=" + ntc_content
				+ ", ntc_date=" + ntc_date + ", ntc_img=" + ntc_img + ", ntc_cnt=" + ntc_cnt + "]";
	}
	
	
}
