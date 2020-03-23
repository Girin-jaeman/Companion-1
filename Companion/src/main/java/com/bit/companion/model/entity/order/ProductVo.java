package com.bit.companion.model.entity.order;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


public class ProductVo {
	private int category_id;
	private int product_id;
	private String product_name;
	private String product_content;
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
	private String category_name;
	private int like_id;
	
	
	
	public ProductVo(int category_id, int product_id, String product_name, String product_content, int product_price,
			int product_stock, Date product_date, String product_image, String product_thumb, String product_option1,
			String product_option2, String product_option3, String product_option4, String product_option5,
			String category_name, int like_id) {
		super();
		this.category_id = category_id;
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_content = product_content;
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
		this.category_name = category_name;
		this.like_id = like_id;
	}

	public ProductVo() {
	}
	
	@Override
	public String toString() {
		return "ProductVo [category_id=" + category_id + ", product_id=" + product_id + ", product_name=" + product_name
				+ ", product_content=" + product_content + ", product_price=" + product_price + ", product_stock="
				+ product_stock + ", product_date=" + product_date + ", product_image=" + product_image
				+ ", product_thumb=" + product_thumb + ", product_option1=" + product_option1 + ", product_option2="
				+ product_option2 + ", product_option3=" + product_option3 + ", product_option4=" + product_option4
				+ ", product_option5=" + product_option5 + ", category_name=" + category_name + ", like_id=" + like_id
				+ "]";
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
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
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public int getLike_id() {
		return like_id;
	}
	public void setLike_id(int like_id) {
		this.like_id = like_id;
	}
	

}