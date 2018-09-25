package com.hotel.pojo;

public class Bill {
	// 账单
	private int b_id, b_num, o_id, oc_id, r_num, o_type;
	private String b_name, oc_name, oc_sex, oc_phone, r_type, o_arriva_time, o_departure_time, o_checkin_time,
			o_checkout_time, o_people_num, oc_idnum, b_time;
	private float price,b_price;

	public int getOc_id() {
		return oc_id;
	}

	public void setOc_id(int oc_id) {
		this.oc_id = oc_id;
	}

	public int getR_num() {
		return r_num;
	}

	public void setR_num(int r_num) {
		this.r_num = r_num;
	}

	public int getO_type() {
		return o_type;
	}

	public void setO_type(int o_type) {
		this.o_type = o_type;
	}

	public String getOc_name() {
		return oc_name;
	}

	public void setOc_name(String oc_name) {
		this.oc_name = oc_name;
	}

	public String getOc_sex() {
		return oc_sex;
	}

	public void setOc_sex(String oc_sex) {
		this.oc_sex = oc_sex;
	}

	public String getOc_phone() {
		return oc_phone;
	}

	public void setOc_phone(String oc_phone) {
		this.oc_phone = oc_phone;
	}

	public String getR_type() {
		return r_type;
	}

	public void setR_type(String r_type) {
		this.r_type = r_type;
	}

	public String getO_arriva_time() {
		return o_arriva_time;
	}

	public void setO_arriva_time(String o_arriva_time) {
		this.o_arriva_time = o_arriva_time;
	}

	public String getO_departure_time() {
		return o_departure_time;
	}

	public void setO_departure_time(String o_departure_time) {
		this.o_departure_time = o_departure_time;
	}

	public String getO_checkin_time() {
		return o_checkin_time;
	}

	public void setO_checkin_time(String o_checkin_time) {
		this.o_checkin_time = o_checkin_time;
	}

	public String getO_checkout_time() {
		return o_checkout_time;
	}

	public void setO_checkout_time(String o_checkout_time) {
		this.o_checkout_time = o_checkout_time;
	}

	public String getO_people_num() {
		return o_people_num;
	}

	public void setO_people_num(String o_people_num) {
		this.o_people_num = o_people_num;
	}

	public String getOc_idnum() {
		return oc_idnum;
	}

	public void setOc_idnum(String oc_idnum) {
		this.oc_idnum = oc_idnum;
	}

	

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

	public float getB_price() {
		return b_price;
	}

	public void setB_price(float b_price) {
		this.b_price = b_price;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getB_time() {
		return b_time;
	}

	public void setB_time(String b_time) {
		this.b_time = b_time;
	}
}
