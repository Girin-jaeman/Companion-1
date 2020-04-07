package com.bit.companion.model.entity.mypage;

public class MypageCartVo {
	private String cart_id;
	private String member_id;
	private String product_id;
	private String cart_quantity;
	private String cart_option;
	private String product_name;
	private String product_price;
	
	public MypageCartVo() {
		// TODO Auto-generated constructor stub
	}
	
	public String getCart_id() {
		return cart_id;
	}
	public void setCart_id(String cart_id) {
		this.cart_id = cart_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getCart_quantity() {
		return cart_quantity;
	}
	public void setCart_quantity(String cart_quantity) {
		this.cart_quantity = cart_quantity;
	}
	public String getCart_option() {
		return cart_option;
	}
	public void setCart_option(String cart_option) {
		this.cart_option = cart_option;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}

	@Override
	public String toString() {
		return "MypageCartVo [cart_id=" + cart_id + ", member_id=" + member_id + ", product_id=" + product_id
				+ ", cart_quantity=" + cart_quantity + ", cart_option=" + cart_option + ", product_name=" + product_name
				+ ", product_price=" + product_price + "]";
	}

	
	
}