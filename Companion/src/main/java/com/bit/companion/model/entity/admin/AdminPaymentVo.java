package com.bit.companion.model.entity.admin;

import java.sql.Date;

public class AdminPaymentVo {
	private int payment_id;
	private int order_id;
	private String member_id;
	private Date payment_date;
	private int payment_amount;
	private int payment_state_id;
	
	public AdminPaymentVo() {}

	public AdminPaymentVo(int payment_id, int order_id, String member_id, Date payment_date, int payment_amount,
			int payment_state_id) {
		super();
		this.payment_id = payment_id;
		this.order_id = order_id;
		this.member_id = member_id;
		this.payment_date = payment_date;
		this.payment_amount = payment_amount;
		this.payment_state_id = payment_state_id;
	}

	public int getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
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

	public Date getPayment_date() {
		return payment_date;
	}

	public void setPayment_date(Date payment_date) {
		this.payment_date = payment_date;
	}

	public int getPayment_amount() {
		return payment_amount;
	}

	public void setPayment_amount(int payment_amount) {
		this.payment_amount = payment_amount;
	}

	public int getPayment_state_id() {
		return payment_state_id;
	}

	public void setPayment_state_id(int payment_state_id) {
		this.payment_state_id = payment_state_id;
	}

	@Override
	public String toString() {
		return "AdminPaymentVo [payment_id=" + payment_id + ", order_id=" + order_id + ", member_id=" + member_id
				+ ", payment_date=" + payment_date + ", payment_amount=" + payment_amount + ", payment_state_id="
				+ payment_state_id + "]";
	}
	
}
