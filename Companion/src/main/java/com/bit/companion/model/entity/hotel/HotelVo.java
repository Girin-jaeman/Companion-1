package com.bit.companion.model.entity.hotel;

import java.sql.Date;

public class HotelVo {
	private int rsv_id;
	private Date rsv_date;
	private Date rsv_checkin;
	private Date rsv_checkout;
	private String rsv_type;
	private int rsv_age;
	private String rsv_msg;
	private String rsv_svc_id;
	private String rsv_mb_id;
	
	public HotelVo() {}

	public HotelVo(int rsv_id, Date rsv_date, Date rsv_checkin, Date rsv_checkout, String rsv_type, int rsv_age,
			String rsv_msg, String rsv_svc_id, String rsv_mb_id) {
		super();
		this.rsv_id = rsv_id;
		this.rsv_date = rsv_date;
		this.rsv_checkin = rsv_checkin;
		this.rsv_checkout = rsv_checkout;
		this.rsv_type = rsv_type;
		this.rsv_age = rsv_age;
		this.rsv_msg = rsv_msg;
		this.rsv_svc_id = rsv_svc_id;
		this.rsv_mb_id = rsv_mb_id;
	}

	public int getRsv_id() {
		return rsv_id;
	}

	public void setRsv_id(int rsv_id) {
		this.rsv_id = rsv_id;
	}

	public Date getRsv_date() {
		return rsv_date;
	}

	public void setRsv_date(Date rsv_date) {
		this.rsv_date = rsv_date;
	}

	public Date getRsv_checkin() {
		return rsv_checkin;
	}

	public void setRsv_checkin(Date rsv_checkin) {
		this.rsv_checkin = rsv_checkin;
	}

	public Date getRsv_checkout() {
		return rsv_checkout;
	}

	public void setRsv_checkout(Date rsv_checkout) {
		this.rsv_checkout = rsv_checkout;
	}

	public String getRsv_type() {
		return rsv_type;
	}

	public void setRsv_type(String rsv_type) {
		this.rsv_type = rsv_type;
	}

	public int getRsv_age() {
		return rsv_age;
	}

	public void setRsv_age(int rsv_age) {
		this.rsv_age = rsv_age;
	}

	public String getRsv_msg() {
		return rsv_msg;
	}

	public void setRsv_msg(String rsv_msg) {
		this.rsv_msg = rsv_msg;
	}

	public String getRsv_svc_id() {
		return rsv_svc_id;
	}

	public void setRsv_svc_id(String rsv_svc_id) {
		this.rsv_svc_id = rsv_svc_id;
	}

	public String getRsv_mb_id() {
		return rsv_mb_id;
	}

	public void setRsv_mb_id(String rsv_mb_id) {
		this.rsv_mb_id = rsv_mb_id;
	}

	@Override
	public String toString() {
		return "HotelVo [rsv_id=" + rsv_id + ", rsv_date=" + rsv_date + ", rsv_checkin=" + rsv_checkin
				+ ", rsv_checkout=" + rsv_checkout + ", rsv_type=" + rsv_type + ", rsv_age=" + rsv_age + ", rsv_msg="
				+ rsv_msg + ", rsv_svc_id=" + rsv_svc_id + ", rsv_mb_id=" + rsv_mb_id + "]";
	}

	
}
