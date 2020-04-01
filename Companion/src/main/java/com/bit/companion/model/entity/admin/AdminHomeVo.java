package com.bit.companion.model.entity.admin;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class AdminHomeVo {
	private int payment_id;
	private int order_id;
	private String member_id;
	private Date payment_date;
	private int payment_amount;
	private int payment_state_id;
	private String today;
	private String today_1;
	private String today_2;
	private String today_3;
	private String today_4;
	private String today_5;
	private String today_6;


	public AdminHomeVo() {
	}

	public AdminHomeVo(int payment_id, int order_id, String member_id, Date payment_date, int payment_amount,
			int payment_state_id, String today, String today_1, String today_2, String today_3, String today_4,
			String today_5, String today_6) {
		super();
		this.payment_id = payment_id;
		this.order_id = order_id;
		this.member_id = member_id;
		this.payment_date = payment_date;
		this.payment_amount = payment_amount;
		this.payment_state_id = payment_state_id;
		this.today = today;
		this.today_1 = today_1;
		this.today_2 = today_2;
		this.today_3 = today_3;
		this.today_4 = today_4;
		this.today_5 = today_5;
		this.today_6 = today_6;
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

	public String getToday() {
		return today;
	}

	public void setToday(String today) {
		this.today = today;
	}

	public String getToday_1() {
		return today_1;
	}

	public void setToday_1(String today_1) {
		this.today_1 = today_1;
	}

	public String getToday_2() {
		return today_2;
	}

	public void setToday_2(String today_2) {
		this.today_2 = today_2;
	}

	public String getToday_3() {
		return today_3;
	}

	public void setToday_3(String today_3) {
		this.today_3 = today_3;
	}

	public String getToday_4() {
		return today_4;
	}

	public void setToday_4(String today_4) {
		this.today_4 = today_4;
	}

	public String getToday_5() {
		return today_5;
	}

	public void setToday_5(String today_5) {
		this.today_5 = today_5;
	}

	public String getToday_6() {
		return today_6;
	}

	public void setToday_6(String today_6) {
		this.today_6 = today_6;
	}

	@Override
	public String toString() {
		return "AdminHomeVo [payment_id=" + payment_id + ", order_id=" + order_id + ", member_id=" + member_id
				+ ", payment_date=" + payment_date + ", payment_amount=" + payment_amount + ", payment_state_id="
				+ payment_state_id + ", today=" + today + ", today_1=" + today_1 + ", today_2=" + today_2 + ", today_3="
				+ today_3 + ", today_4=" + today_4 + ", today_5=" + today_5 + ", today_6=" + today_6 + "]";
	}

	/* Date Calculator */
	public void chartDate() {
		java.util.Date date = new java.util.Date();

		SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");

		Calendar cal = Calendar.getInstance();

		cal.setTime(date);

		today = sdformat.format(cal.getTime());

		cal.add(Calendar.DATE, -1);
		today_1 = sdformat.format(cal.getTime());

		cal.add(Calendar.DATE, -1);
		today_2 = sdformat.format(cal.getTime());

		cal.add(Calendar.DATE, -1);
		today_3 = sdformat.format(cal.getTime());

		cal.add(Calendar.DATE, -1);
		today_4 = sdformat.format(cal.getTime());

		cal.add(Calendar.DATE, -1);
		today_5 = sdformat.format(cal.getTime());

		cal.add(Calendar.DATE, -1);
		today_6 = sdformat.format(cal.getTime());
	}
}
