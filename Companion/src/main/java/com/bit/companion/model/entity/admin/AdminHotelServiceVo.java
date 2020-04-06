package com.bit.companion.model.entity.admin;

public class AdminHotelServiceVo {
	private int service_id;
	private String service_name;
	
	public AdminHotelServiceVo() {}

	public AdminHotelServiceVo(int service_id, String service_name) {
		super();
		this.service_id = service_id;
		this.service_name = service_name;
	}
	
	public int getService_id() {
		return service_id;
	}

	public void setService_id(int service_id) {
		this.service_id = service_id;
	}

	public String getService_name() {
		return service_name;
	}

	public void setService_name(String service_name) {
		this.service_name = service_name;
	}

	@Override
	public String toString() {
		return "AdminHotelServiceVo [service_id=" + service_id + ", service_name=" + service_name + "]";
	}

}
