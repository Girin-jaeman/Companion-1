package com.bit.companion.model.entity.login;

//로그인한 객체정보
public class LoginVo {
	private String mb_id;
	private String mb_pw;
	private String mb_name;
	
	public LoginVo() {
		// TODO Auto-generated constructor stub
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getMb_pw() {
		return mb_pw;
	}

	public void setMb_pw(String mb_pw) {
		this.mb_pw = mb_pw;
	}

	public String getMb_name() {
		return mb_name;
	}

	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}
	
	
}
