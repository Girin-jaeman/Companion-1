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
	private String month;
	private String month_1;
	private String month_2;
	private String month_3;
	private String month_4;
	private String month_5;
	private String month_6;
	
	public ChartDate() {
	}

	public ChartDate(String today, String today_1, String today_2, String today_3, String today_4, String today_5,
			String today_6, String month, String month_1, String month_2, String month_3, String month_4,
			String month_5, String month_6) {
		super();
		this.today = today;
		this.today_1 = today_1;
		this.today_2 = today_2;
		this.today_3 = today_3;
		this.today_4 = today_4;
		this.today_5 = today_5;
		this.today_6 = today_6;
		this.month = month;
		this.month_1 = month_1;
		this.month_2 = month_2;
		this.month_3 = month_3;
		this.month_4 = month_4;
		this.month_5 = month_5;
		this.month_6 = month_6;
	}

	@Override
	public String toString() {
		return "ChartDate [today=" + today + ", today_1=" + today_1 + ", today_2=" + today_2 + ", today_3=" + today_3
				+ ", today_4=" + today_4 + ", today_5=" + today_5 + ", today_6=" + today_6 + ", month=" + month
				+ ", month_1=" + month_1 + ", month_2=" + month_2 + ", month_3=" + month_3 + ", month_4=" + month_4
				+ ", month_5=" + month_5 + ", month_6=" + month_6 + "]";
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

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getMonth_1() {
		return month_1;
	}

	public void setMonth_1(String month_1) {
		this.month_1 = month_1;
	}

	public String getMonth_2() {
		return month_2;
	}

	public void setMonth_2(String month_2) {
		this.month_2 = month_2;
	}

	public String getMonth_3() {
		return month_3;
	}

	public void setMonth_3(String month_3) {
		this.month_3 = month_3;
	}

	public String getMonth_4() {
		return month_4;
	}

	public void setMonth_4(String month_4) {
		this.month_4 = month_4;
	}

	public String getMonth_5() {
		return month_5;
	}

	public void setMonth_5(String month_5) {
		this.month_5 = month_5;
	}

	public String getMonth_6() {
		return month_6;
	}

	public void setMonth_6(String month_6) {
		this.month_6 = month_6;
	}

	/* Date Calculator */
	public void chartDate() {
		java.util.Date date = new java.util.Date();
		java.util.Date mon = new java.util.Date();

		SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdkformat = new SimpleDateFormat("yyyy-MM");

		Calendar cal = Calendar.getInstance();
		Calendar calMonth = Calendar.getInstance();

		cal.setTime(date);
		calMonth.setTime(mon);

		today = sdformat.format(cal.getTime());
		month = sdkformat.format(calMonth.getTime());

		cal.add(Calendar.DATE, -1);
		calMonth.add(Calendar.MONTH, -1);
		today_1 = sdformat.format(cal.getTime());
		month_1 = sdkformat.format(calMonth.getTime());

		cal.add(Calendar.DATE, -1);
		calMonth.add(Calendar.MONTH, -1);
		today_2 = sdformat.format(cal.getTime());
		month_2 = sdkformat.format(calMonth.getTime());

		cal.add(Calendar.DATE, -1);
		calMonth.add(Calendar.MONTH, -1);
		today_3 = sdformat.format(cal.getTime());
		month_3 = sdkformat.format(calMonth.getTime());

		cal.add(Calendar.DATE, -1);
		calMonth.add(Calendar.MONTH, -1);
		today_4 = sdformat.format(cal.getTime());
		month_4 = sdkformat.format(calMonth.getTime());

		cal.add(Calendar.DATE, -1);
		calMonth.add(Calendar.MONTH, -1);
		today_5 = sdformat.format(cal.getTime());
		month_5 = sdkformat.format(calMonth.getTime());

		cal.add(Calendar.DATE, -1);
		calMonth.add(Calendar.MONTH, -1);
		today_6 = sdformat.format(cal.getTime());
		month_6 = sdkformat.format(calMonth.getTime());
	}
}
