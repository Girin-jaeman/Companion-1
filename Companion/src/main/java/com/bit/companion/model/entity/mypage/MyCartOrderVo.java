package com.bit.companion.model.entity.mypage;

import java.sql.Date;

public class MyCartOrderVo {
	private String cart_id;
	/* order table */
	private String order_id;
	private String member_id;
	private String order_date;
	private String order_amount;
	private String order_name;
	private String order_tel;
	private String order_phone;
	private String order_addr1;
	private String order_addr2;
	private String order_addr3;
	private String order_msg;
	private String order_state_id;
	/* order_detail table */
	private String order_detail_id;
	private String product_id;
	private String order_detail_price;
	private String order_detail_quantity;
	private String order_detail_option;
	/* delivery table */
	private String delivery_id;
	private String delivery_company;
	private String delivery_number;
	private String delivery_state_id;
	/* payment table */
	private String payment_id;
	private String payment_date;
	private String payment_amount;
	private String payment_state_id;
	
	public MyCartOrderVo() {
	}
	
	
	public String getCart_id() {
		return cart_id;
	}


	public void setCart_id(String cart_id) {
		this.cart_id = cart_id;
	}


	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getOrder_amount() {
		return order_amount;
	}
	public void setOrder_amount(String order_amount) {
		this.order_amount = order_amount;
	}
	public String getOrder_name() {
		return order_name;
	}
	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}
	public String getOrder_tel() {
		return order_tel;
	}
	public void setOrder_tel(String order_tel) {
		this.order_tel = order_tel;
	}
	public String getOrder_phone() {
		return order_phone;
	}
	public void setOrder_phone(String order_phone) {
		this.order_phone = order_phone;
	}
	public String getOrder_addr1() {
		return order_addr1;
	}
	public void setOrder_addr1(String order_addr1) {
		this.order_addr1 = order_addr1;
	}
	public String getOrder_addr2() {
		return order_addr2;
	}
	public void setOrder_addr2(String order_addr2) {
		this.order_addr2 = order_addr2;
	}
	public String getOrder_addr3() {
		return order_addr3;
	}
	public void setOrder_addr3(String order_addr3) {
		this.order_addr3 = order_addr3;
	}
	public String getOrder_msg() {
		return order_msg;
	}
	public void setOrder_msg(String order_msg) {
		this.order_msg = order_msg;
	}
	public String getOrder_state_id() {
		return order_state_id;
	}
	public void setOrder_state_id(String order_state_id) {
		this.order_state_id = order_state_id;
	}
	public String getOrder_detail_id() {
		return order_detail_id;
	}
	public void setOrder_detail_id(String order_detail_id) {
		this.order_detail_id = order_detail_id;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getOrder_detail_price() {
		return order_detail_price;
	}
	public void setOrder_detail_price(String order_detail_price) {
		this.order_detail_price = order_detail_price;
	}
	public String getOrder_detail_quantity() {
		return order_detail_quantity;
	}
	public void setOrder_detail_quantity(String order_detail_quantity) {
		this.order_detail_quantity = order_detail_quantity;
	}
	public String getOrder_detail_option() {
		return order_detail_option;
	}
	public void setOrder_detail_option(String order_detail_option) {
		this.order_detail_option = order_detail_option;
	}
	public String getDelivery_id() {
		return delivery_id;
	}
	public void setDelivery_id(String delivery_id) {
		this.delivery_id = delivery_id;
	}
	public String getDelivery_company() {
		return delivery_company;
	}
	public void setDelivery_company(String delivery_company) {
		this.delivery_company = delivery_company;
	}
	public String getDelivery_number() {
		return delivery_number;
	}
	public void setDelivery_number(String delivery_number) {
		this.delivery_number = delivery_number;
	}
	public String getDelivery_state_id() {
		return delivery_state_id;
	}
	public void setDelivery_state_id(String delivery_state_id) {
		this.delivery_state_id = delivery_state_id;
	}
	public String getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	public String getPayment_amount() {
		return payment_amount;
	}
	public void setPayment_amount(String payment_amount) {
		this.payment_amount = payment_amount;
	}
	public String getPayment_state_id() {
		return payment_state_id;
	}
	public void setPayment_state_id(String payment_state_id) {
		this.payment_state_id = payment_state_id;
	}


	@Override
	public String toString() {
		return "MyCartOrderVo [cart_id=" + cart_id + ", order_id=" + order_id + ", member_id=" + member_id
				+ ", order_date=" + order_date + ", order_amount=" + order_amount + ", order_name=" + order_name
				+ ", order_tel=" + order_tel + ", order_phone=" + order_phone + ", order_addr1=" + order_addr1
				+ ", order_addr2=" + order_addr2 + ", order_addr3=" + order_addr3 + ", order_msg=" + order_msg
				+ ", order_state_id=" + order_state_id + ", order_detail_id=" + order_detail_id + ", product_id="
				+ product_id + ", order_detail_price=" + order_detail_price + ", order_detail_quantity="
				+ order_detail_quantity + ", order_detail_option=" + order_detail_option + ", delivery_id="
				+ delivery_id + ", delivery_company=" + delivery_company + ", delivery_number=" + delivery_number
				+ ", delivery_state_id=" + delivery_state_id + ", payment_id=" + payment_id + ", payment_date="
				+ payment_date + ", payment_amount=" + payment_amount + ", payment_state_id=" + payment_state_id + "]";
	}
	
	
	
}
