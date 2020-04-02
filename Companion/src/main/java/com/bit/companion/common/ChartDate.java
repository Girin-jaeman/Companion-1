package com.bit.companion.common;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class ChartDate {

	private String today;
	private String today_1;
	private String today_2;
	private String today_3;
	private String today_4;
	private String today_5;
	private String today_6;
	
	public ChartDate() {
	}
	
	public ChartDate(String today, String today_1, String today_2, String today_3, String today_4, String today_5,
			String today_6) {
		super();
		this.today = today;
		this.today_1 = today_1;
		this.today_2 = today_2;
		this.today_3 = today_3;
		this.today_4 = today_4;
		this.today_5 = today_5;
		this.today_6 = today_6;
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
		return "ChartDate [today=" + today + ", today_1=" + today_1 + ", today_2=" + today_2 + ", today_3=" + today_3
				+ ", today_4=" + today_4 + ", today_5=" + today_5 + ", today_6=" + today_6 + "]";
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
