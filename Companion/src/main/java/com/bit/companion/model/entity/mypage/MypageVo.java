package com.bit.companion.model.entity.mypage;

public class MypageVo {
	private String member_pw;
	private String id_chk;
	private String pw_change;
	
	public MypageVo() {
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getId_chk() {
		return id_chk;
	}

	public void setId_chk(String id_chk) {
		this.id_chk = id_chk;
	}

	public String getPw_change() {
		return pw_change;
	}

	public void setPw_change(String pw_change) {
		this.pw_change = pw_change;
	}

	@Override
	public String toString() {
		return "MypageVo [member_pw=" + member_pw + ", id_chk=" + id_chk + ", pw_change=" + pw_change + "]";
	}

	

	
}
