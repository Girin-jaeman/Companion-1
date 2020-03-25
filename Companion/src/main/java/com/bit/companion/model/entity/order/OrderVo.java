package com.bit.companion.model.entity.order;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class OrderVo {
	private int order_id;
	private String member_id;
	private Date order_date;
	private int order_amount;
	private String order_name;
	private String order_tell;
	private String order_phone;
	private String order_addr1;
	private String order_addr2;
	private String order_addr3;
	private String order_msg;
	private String member_name;
	private String member_phone;
	private String member_email;
	private int order_state_id;
	private int product_id;
	private int product_price;
	private int product_stock;
	private Date product_date;
	private String product_image;
	private String product_thumb;
	private String product_option1;
	private String product_option2;
	private String product_option3;
	private String product_option4;
	private String product_option5;
	private String product_name;
	private String product_content;
	
	public OrderVo() {
	}
	
	public OrderVo(int order_id, String member_id, Date order_date, int order_amount, String order_name,
			String order_tell, String order_phone, String order_addr1, String order_addr2, String order_addr3,
			String order_msg, String member_name, String member_phone, String member_email, int order_state_id,
			int product_id, int product_price, int product_stock, Date product_date, String product_image,
			String product_thumb, String product_option1, String product_option2, String product_option3,
			String product_option4, String product_option5, String product_name, String product_content) {
		super();
		this.order_id = order_id;
		this.member_id = member_id;
		this.order_date = order_date;
		this.order_amount = order_amount;
		this.order_name = order_name;
		this.order_tell = order_tell;
		this.order_phone = order_phone;
		this.order_addr1 = order_addr1;
		this.order_addr2 = order_addr2;
		this.order_addr3 = order_addr3;
		this.order_msg = order_msg;
		this.member_name = member_name;
		this.member_phone = member_phone;
		this.member_email = member_email;
		this.order_state_id = order_state_id;
		this.product_id = product_id;
		this.product_price = product_price;
		this.product_stock = product_stock;
		this.product_date = product_date;
		this.product_image = product_image;
		this.product_thumb = product_thumb;
		this.product_option1 = product_option1;
		this.product_option2 = product_option2;
		this.product_option3 = product_option3;
		this.product_option4 = product_option4;
		this.product_option5 = product_option5;
		this.product_name = product_name;
		this.product_content = product_content;
	}

	@Override
	public String toString() {
		return "OrderVo [order_id=" + order_id + ", member_id=" + member_id + ", order_date=" + order_date
				+ ", order_amount=" + order_amount + ", order_name=" + order_name + ", order_tell=" + order_tell
				+ ", order_phone=" + order_phone + ", order_addr1=" + order_addr1 + ", order_addr2=" + order_addr2
				+ ", order_addr3=" + order_addr3 + ", order_msg=" + order_msg + ", member_name=" + member_name
				+ ", member_phone=" + member_phone + ", member_email=" + member_email + ", order_state_id="
				+ order_state_id + ", product_id=" + product_id + ", product_price=" + product_price
				+ ", product_stock=" + product_stock + ", product_date=" + product_date + ", product_image="
				+ product_image + ", product_thumb=" + product_thumb + ", product_option1=" + product_option1
				+ ", product_option2=" + product_option2 + ", product_option3=" + product_option3 + ", product_option4="
				+ product_option4 + ", product_option5=" + product_option5 + ", product_name=" + product_name
				+ ", product_content=" + product_content + "]";
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public int getOrder_amount() {
		return order_amount;
	}

	public void setOrder_amount(int order_amount) {
		this.order_amount = order_amount;
	}

	public String getOrder_name() {
		return order_name;
	}

	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}

	public String getOrder_tell() {
		return order_tell;
	}

	public void setOrder_tell(String order_tell) {
		this.order_tell = order_tell;
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

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
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

	public int getOrder_state_id() {
		return order_state_id;
	}

	public void setOrder_state_id(int order_state_id) {
		this.order_state_id = order_state_id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public int getProduct_stock() {
		return product_stock;
	}

	public void setProduct_stock(int product_stock) {
		this.product_stock = product_stock;
	}

	public Date getProduct_date() {
		return product_date;
	}

	public void setProduct_date(Date product_date) {
		this.product_date = product_date;
	}

	public String getProduct_image() {
		return product_image;
	}

	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}

	public String getProduct_thumb() {
		return product_thumb;
	}

	public void setProduct_thumb(String product_thumb) {
		this.product_thumb = product_thumb;
	}

	public String getProduct_option1() {
		return product_option1;
	}

	public void setProduct_option1(String product_option1) {
		this.product_option1 = product_option1;
	}

	public String getProduct_option2() {
		return product_option2;
	}

	public void setProduct_option2(String product_option2) {
		this.product_option2 = product_option2;
	}

	public String getProduct_option3() {
		return product_option3;
	}

	public void setProduct_option3(String product_option3) {
		this.product_option3 = product_option3;
	}

	public String getProduct_option4() {
		return product_option4;
	}

	public void setProduct_option4(String product_option4) {
		this.product_option4 = product_option4;
	}

	public String getProduct_option5() {
		return product_option5;
	}

	public void setProduct_option5(String product_option5) {
		this.product_option5 = product_option5;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_content() {
		return product_content;
	}

	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}
	
}