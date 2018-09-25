package com.hotel.pojo;

public class Room {
	// 客房
	private int r_id, r_num;
	private String r_type;
	private float r_price;

	public int getR_id() {
		return r_id;
	}

	public void setR_id(int r_id) {
		this.r_id = r_id;
	}

	public int getR_num() {
		return r_num;
	}

	public void setR_num(int r_num) {
		this.r_num = r_num;
	}

	public String getR_type() {
		return r_type;
	}

	public void setR_type(String r_type) {
		this.r_type = r_type;
	}

	public float getR_price() {
		return r_price;
	}

	public void setR_price(float r_price) {
		this.r_price = r_price;
	}
}
