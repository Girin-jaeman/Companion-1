package com.bit.companion.model.entity.order;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderVo {
	private int ord_id;	
	private Date ord_date;
	private int ord_amount;
	private String ord_name;
	private String ord_tel;
	private String ord_phone;
	private String ord_addr1;
	private String ord_addr2;
	private String ord_addr3;
	private String ord_type;
	private String ord_state;
	private String ord_mb_id;
}