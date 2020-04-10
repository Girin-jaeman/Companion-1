package com.bit.companion.model.entity.admin;

import java.sql.Date;

public class AdminOrderVo {
	private int order_id;
	private int order_state_id;
	private String member_id;
	private String member_name;
	private int order_amount;
	private String order_name;
	private String order_phone;
	private Date order_date;
	
	public AdminOrderVo() {}

	public AdminOrderVo(int order_id, int order_state_id, String member_id, String member_name, int order_amount,
			String order_name, String order_phone, Date order_date) {
		super();
		this.order_id = order_id;
		this.order_state_id = order_state_id;
		this.member_id = member_id;
		this.member_name = member_name;
		this.order_amount = order_amount;
		this.order_name = order_name;
		this.order_phone = order_phone;
		this.order_date = order_date;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getOrder_state_id() {
		return order_state_id;
	}

	public void setOrder_state_id(int order_state_id) {
		this.order_state_id = order_state_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public int getOrder_amount() {
		return order_amount;
	}

	public void setOrder_amount(int order_amount) {
		this.order_amount = order_amount;
	}

	public String getOrder_name() {
		return order_name;
	}

	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}

	public String getOrder_phone() {
		return order_phone;
	}

	public void setOrder_phone(String order_phone) {
		this.order_phone = order_phone;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	@Override
	public String toString() {
		return "AdminOrderVo [order_id=" + order_id + ", order_state_id=" + order_state_id + ", member_id=" + member_id
				+ ", member_name=" + member_name + ", order_amount=" + order_amount + ", order_name=" + order_name
				+ ", order_phone=" + order_phone + ", order_date=" + order_date + "]";
	}
	
}
