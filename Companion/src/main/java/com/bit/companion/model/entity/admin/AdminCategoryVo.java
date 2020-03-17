package com.bit.companion.model.entity.admin;

public class AdminCategoryVo {
	private int category_id;
	private int category_refid;
	private String category_name;
	
	public AdminCategoryVo() {
	}

	public AdminCategoryVo(int category_id, int category_refid, String category_name) {
		super();
		this.category_id = category_id;
		this.category_refid = category_refid;
		this.category_name = category_name;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public int getCategory_refid() {
		return category_refid;
	}

	public void setCategory_refid(int category_refid) {
		this.category_refid = category_refid;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	@Override
	public String toString() {
		return "AdminCategoryVo [category_id=" + category_id + ", category_refid=" + category_refid + ", category_name="
				+ category_name + "]";
	}

}
