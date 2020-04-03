package com.bit.companion.model.entity.admin;

import java.sql.Date;

public class AdminReservationVo {
	private int reserve_id;
	private String member_id;
	private int service_id;
	private Date reserve_date;
	private Date reserve_checkin;
	private String reserve_dogtype;
	private int reserve_dogage;
	private String reserve_msg;
	private int reserve_state_id;
	
	public AdminReservationVo() {}

	public AdminReservationVo(int reserve_id, String member_id, int service_id, Date reserve_date, Date reserve_checkin,
			String reserve_dogtype, int reserve_dogage, String reserve_msg, int reserve_state_id) {
		super();
		this.reserve_id = reserve_id;
		this.member_id = member_id;
		this.service_id = service_id;
		this.reserve_date = reserve_date;
		this.reserve_checkin = reserve_checkin;
		this.reserve_dogtype = reserve_dogtype;
		this.reserve_dogage = reserve_dogage;
		this.reserve_msg = reserve_msg;
		this.reserve_state_id = reserve_state_id;
	}

	public int getReserve_id() {
		return reserve_id;
	}

	public void setReserve_id(int reserve_id) {
		this.reserve_id = reserve_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getService_id() {
		return service_id;
	}

	public void setService_id(int service_id) {
		this.service_id = service_id;
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

	public String getReserve_dogtype() {
		return reserve_dogtype;
	}

	public void setReserve_dogtype(String reserve_dogtype) {
		this.reserve_dogtype = reserve_dogtype;
	}

	public int getReserve_dogage() {
		return reserve_dogage;
	}

	public void setReserve_dogage(int reserve_dogage) {
		this.reserve_dogage = reserve_dogage;
	}

	public String getReserve_msg() {
		return reserve_msg;
	}

	public void setReserve_msg(String reserve_msg) {
		this.reserve_msg = reserve_msg;
	}

	public int getReserve_state_id() {
		return reserve_state_id;
	}

	public void setReserve_state_id(int reserve_state_id) {
		this.reserve_state_id = reserve_state_id;
	}

	@Override
	public String toString() {
		return "AdminReservationVo [reserve_id=" + reserve_id + ", member_id=" + member_id + ", service_id="
				+ service_id + ", reserve_date=" + reserve_date + ", reserve_checkin=" + reserve_checkin
				+ ", reserve_dogtype=" + reserve_dogtype + ", reserve_dogage=" + reserve_dogage + ", reserve_msg="
				+ reserve_msg + ", reserve_state_id=" + reserve_state_id + "]";
	}
	
	
}
