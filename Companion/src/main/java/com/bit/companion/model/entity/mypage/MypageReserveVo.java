package com.bit.companion.model.entity.mypage;

import java.sql.Date;

public class MypageReserveVo {
	private String reserve_id;
	private String member_id;
	private Date reserve_date;
	private Date reserve_checkin;
	private Date reserve_checkout;
	private String reserve_dogtype;
	private String reserve_dogage;
	private String reserve_msg;
	
	private String service_id;
	private String service_name;
	
	private String reserve_state_id;
	private String reserve_state_name;
	
	public MypageReserveVo() {
	}

	public String getReserve_id() {
		return reserve_id;
	}

	public void setReserve_id(String reserve_id) {
		this.reserve_id = reserve_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public Date getReserve_date() {
		return reserve_date;
	}

	public void setReserve_date(Date reserve_date) {
		this.reserve_date = reserve_date;
	}

	public Date getReserve_checkin() {
		return reserve_checkin;
	}

	public void setReserve_checkin(Date reserve_checkin) {
		this.reserve_checkin = reserve_checkin;
	}

	public Date getReserve_checkout() {
		return reserve_checkout;
	}

	public void setReserve_checkout(Date reserve_checkout) {
		this.reserve_checkout = reserve_checkout;
	}

	public String getReserve_dogtype() {
		return reserve_dogtype;
	}

	public void setReserve_dogtype(String reserve_dogtype) {
		this.reserve_dogtype = reserve_dogtype;
	}

	public String getReserve_dogage() {
		return reserve_dogage;
	}

	public void setReserve_dogage(String reserve_dogage) {
		this.reserve_dogage = reserve_dogage;
	}

	public String getReserve_msg() {
		return reserve_msg;
	}

	public void setReserve_msg(String reserve_msg) {
		this.reserve_msg = reserve_msg;
	}

	public String getService_id() {
		return service_id;
	}

	public void setService_id(String service_id) {
		this.service_id = service_id;
	}

	public String getService_name() {
		return service_name;
	}

	public void setService_name(String service_name) {
		this.service_name = service_name;
	}

	public String getReserve_state_id() {
		return reserve_state_id;
	}

	public void setReserve_state_id(String reserve_state_id) {
		this.reserve_state_id = reserve_state_id;
	}


	public String getReserve_state_name() {
		return reserve_state_name;
	}

	public void setReserve_state_name(String reserve_state_name) {
		this.reserve_state_name = reserve_state_name;
	}

	@Override
	public String toString() {
		return "MypageReserveVo [reserve_id=" + reserve_id + ", member_id=" + member_id + ", reserve_date="
				+ reserve_date + ", reserve_checkin=" + reserve_checkin + ", reserve_checkout=" + reserve_checkout
				+ ", reserve_dogtype=" + reserve_dogtype + ", reserve_dogage=" + reserve_dogage + ", reserve_msg="
				+ reserve_msg + ", service_id=" + service_id + ", service_name=" + service_name + ", reserve_state_id="
				+ reserve_state_id + ", reserve_state_name=" + reserve_state_name + "]";
	}
	
	
	
}
