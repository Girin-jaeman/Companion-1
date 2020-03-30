package com.bit.companion.model.entity.admin;

public class AdminMemberViewVo {
	private String member_id; 
	private String member_pw;
	private String member_name;
	private String member_tel;
	private String member_phone;
	private String member_email;
	private String member_addr1;
	private String member_addr2;
	private String member_addr3;
	private String member_grade;
	
	public AdminMemberViewVo() {
	}

	public AdminMemberViewVo(String member_id, String member_pw, String member_name, String member_tel,
			String member_phone, String member_email, String member_addr1, String member_addr2, String member_addr3,
			String member_grade) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_tel = member_tel;
		this.member_phone = member_phone;
		this.member_email = member_email;
		this.member_addr1 = member_addr1;
		this.member_addr2 = member_addr2;
		this.member_addr3 = member_addr3;
		this.member_grade = member_grade;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_tel() {
		return member_tel;
	}

	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_addr1() {
		return member_addr1;
	}

	public void setMember_addr1(String member_addr1) {
		this.member_addr1 = member_addr1;
	}

	public String getMember_addr2() {
		return member_addr2;
	}

	public void setMember_addr2(String member_addr2) {
		this.member_addr2 = member_addr2;
	}

	public String getMember_addr3() {
		return member_addr3;
	}

	public void setMember_addr3(String member_addr3) {
		this.member_addr3 = member_addr3;
	}

	public String getMember_grade() {
		return member_grade;
	}

	public void setMember_grade(String member_grade) {
		this.member_grade = member_grade;
	}

	@Override
	public String toString() {
		return "AdminMemberViewVo [member_id=" + member_id + ", member_pw=" + member_pw + ", member_name=" + member_name
				+ ", member_tel=" + member_tel + ", member_phone=" + member_phone + ", member_email=" + member_email
				+ ", member_addr1=" + member_addr1 + ", member_addr2=" + member_addr2 + ", member_addr3=" + member_addr3
				+ ", member_grade=" + member_grade + "]";
	}
	
}
