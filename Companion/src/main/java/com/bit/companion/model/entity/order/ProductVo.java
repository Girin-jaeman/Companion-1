package com.bit.companion.model.entity.order;

import lombok.*;

@Getter
@Setter
@ToString
public class ProductVo {
	private String prdt_id;
	private String prdt_name;
	private int prdt_price;
	private int prdt_stock;
	private String prdt_ctgr_id;
}
