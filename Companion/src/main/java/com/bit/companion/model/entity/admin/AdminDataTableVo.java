package com.bit.companion.model.entity.admin;

public class AdminDataTableVo {
	private int product_id;
	private String product_name;
	private int product_price;
	private int product_stock;
	private int order_detail_quantity;
	private int total_cumulative_sales;
	private int month_cumulative_sales;
	
	public AdminDataTableVo() {}

	public AdminDataTableVo(int product_id, String product_name, int product_price, int product_stock,
			int order_detail_quantity, int total_cumulative_sales, int month_cumulative_sales) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_stock = product_stock;
		this.order_detail_quantity = order_detail_quantity;
		this.total_cumulative_sales = total_cumulative_sales;
		this.month_cumulative_sales = month_cumulative_sales;
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

	public int getOrder_detail_quantity() {
		return order_detail_quantity;
	}

	public void setOrder_detail_quantity(int order_detail_quantity) {
		this.order_detail_quantity = order_detail_quantity;
	}

	public int getTotal_cumulative_sales() {
		return total_cumulative_sales;
	}

	public void setTotal_cumulative_sales(int total_cumulative_sales) {
		this.total_cumulative_sales = total_cumulative_sales;
	}

	public int getMonth_cumulative_sales() {
		return month_cumulative_sales;
	}

	public void setMonth_cumulative_sales(int month_cumulative_sales) {
		this.month_cumulative_sales = month_cumulative_sales;
	}

	@Override
	public String toString() {
		return "AdminDataTableVo [product_id=" + product_id + ", product_name=" + product_name + ", product_price="
				+ product_price + ", product_stock=" + product_stock + ", order_detail_quantity="
				+ order_detail_quantity + ", total_cumulative_sales=" + total_cumulative_sales
				+ ", month_cumulative_sales=" + month_cumulative_sales + "]";
	}
	
}
