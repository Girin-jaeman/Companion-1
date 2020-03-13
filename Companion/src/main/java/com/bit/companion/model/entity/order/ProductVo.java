package com.bit.companion.model.entity.order;



public class ProductVo {
	private String prdt_id;
	private String prdt_name;
	private int prdt_price;
	private int prdt_stock;
	private String prdt_img;
	private String prdt_ctgr_id;

	public ProductVo(String prdt_id, String prdt_name, int prdt_price, int prdt_stock, String prdt_img,
			String prdt_ctgr_id) {
		super();
		this.prdt_id = prdt_id;
		this.prdt_name = prdt_name;
		this.prdt_price = prdt_price;
		this.prdt_stock = prdt_stock;
		this.prdt_img = prdt_img;
		this.prdt_ctgr_id = prdt_ctgr_id;
	}

	@Override
	public String toString() {
		return "ProductVo [prdt_id=" + prdt_id + ", prdt_name=" + prdt_name + ", prdt_price=" + prdt_price
				+ ", prdt_stock=" + prdt_stock + ", prdt_img=" + prdt_img + ", prdt_ctgr_id=" + prdt_ctgr_id + "]";
	}

	public ProductVo() {
	}
	
	public String getPrdt_id() {
		return prdt_id;
	}
	public void setPrdt_id(String prdt_id) {
		this.prdt_id = prdt_id;
	}
	public String getPrdt_name() {
		return prdt_name;
	}
	public void setPrdt_name(String prdt_name) {
		this.prdt_name = prdt_name;
	}
	public int getPrdt_price() {
		return prdt_price;
	}
	public void setPrdt_price(int prdt_price) {
		this.prdt_price = prdt_price;
	}
	public int getPrdt_stock() {
		return prdt_stock;
	}
	public void setPrdt_stock(int prdt_stock) {
		this.prdt_stock = prdt_stock;
	}
	public String getPrdt_img() {
		return prdt_img;
	}
	public void setPrdt_img(String prdt_img) {
		this.prdt_img = prdt_img;
	}
	public String getPrdt_ctgr_id() {
		return prdt_ctgr_id;
	}
	public void setPrdt_ctgr_id(String prdt_ctgr_id) {
		this.prdt_ctgr_id = prdt_ctgr_id;
	}
}
