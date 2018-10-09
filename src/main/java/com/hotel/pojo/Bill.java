package com.hotel.pojo;

import java.math.BigDecimal;

public class Bill {
	// 账单
	private int b_id;
	private int b_num;
	private int o_id;
	private String b_name;
	private String b_time;
	private BigDecimal b_price;

	public int getB_id() {
		return b_id;
	}

	public void setB_id(int b_id) {
		this.b_id = b_id;
	}

	public int getB_num() {
		return b_num;
	}

	public void setB_num(int b_num) {
		this.b_num = b_num;
	}

	public int getO_id() {
		return o_id;
	}

	public void setO_id(int o_id) {
		this.o_id = o_id;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getB_time() {
		return b_time;
	}

	public void setB_time(String b_time) {
		this.b_time = b_time;
	}

	public BigDecimal getB_price() {
		return b_price;
	}

	public void setB_price(BigDecimal b_price) {
		this.b_price = b_price;
	}

}
