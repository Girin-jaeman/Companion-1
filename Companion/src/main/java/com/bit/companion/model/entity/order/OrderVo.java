package com.bit.companion.model.entity.order;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class OrderVo {
	private int order_id;
	private String member_id;
	private Date order_date;
	private int order_amount;
	private String order_name;
	private String order_tel;
	private String order_phone;
	private String order_addr1;
	private String order_addr2;
	private String order_addr3;
	private String order_msg;
	private int order_state_id;
	
	public OrderVo(int order_id, String member_id, Date order_date, int order_amount, String order_name,
			String order_tel, String order_phone, String order_addr1, String order_addr2, String order_addr3,
			String order_msg, int order_state_id) {
		super();
		this.order_id = order_id;
		this.member_id = member_id;
		this.order_date = order_date;
		this.order_amount = order_amount;
		this.order_name = order_name;
		this.order_tel = order_tel;
		this.order_phone = order_phone;
		this.order_addr1 = order_addr1;
		this.order_addr2 = order_addr2;
		this.order_addr3 = order_addr3;
		this.order_msg = order_msg;
		this.order_state_id = order_state_id;
	}

	@Override
	public String toString() {
		return "OrderVo [order_id=" + order_id + ", member_id=" + member_id + ", order_date=" + order_date
				+ ", order_amount=" + order_amount + ", order_name=" + order_name + ", order_tel=" + order_tel
				+ ", order_phone=" + order_phone + ", order_addr1=" + order_addr1 + ", order_addr2=" + order_addr2
				+ ", order_addr3=" + order_addr3 + ", order_msg=" + order_msg + ", order_state_id=" + order_state_id
				+ "]";
	}

	public OrderVo() {
	}
	
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
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
	public String getOrder_tel() {
		return order_tel;
	}
	public void setOrder_tel(String order_tel) {
		this.order_tel = order_tel;
	}
	public String getOrder_phone() {
		return order_phone;
	}
	public void setOrder_phone(String order_phone) {
		this.order_phone = order_phone;
	}
	public String getOrder_addr1() {
		return order_addr1;
	}
	public void setOrder_addr1(String order_addr1) {
		this.order_addr1 = order_addr1;
	}
	public String getOrder_addr2() {
		return order_addr2;
	}
	public void setOrder_addr2(String order_addr2) {
		this.order_addr2 = order_addr2;
	}
	public String getOrder_addr3() {
		return order_addr3;
	}
	public void setOrder_addr3(String order_addr3) {
		this.order_addr3 = order_addr3;
	}
	public String getOrder_msg() {
		return order_msg;
	}
	public void setOrder_msg(String order_msg) {
		this.order_msg = order_msg;
	}
	public int getOrder_state_id() {
		return order_state_id;
	}
	public void setOrder_state_id(int order_state_id) {
		this.order_state_id = order_state_id;
	}
}