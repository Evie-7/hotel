package com.hotel.pojo;

import java.math.BigDecimal;
import java.util.List;

public class Order {
	// 订单
	private int oc_id;
	private int r_num;
	private int o_type;
	private String o_id;
	private String oc_name;
	private String oc_phone;
	private String oc_idnum;
	private String oc_sex;
	private String o_arriva_time;
	private String o_departure_time;
	private String r_type;
	private String o_people_num;
	private String o_checkin_time;
	private String o_checkout_time;
	private BigDecimal r_price;
	private BigDecimal b_price;
	private BigDecimal total_price;

	List<Bill> bill;

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

	public String getO_id() {
		return o_id;
	}

	public void setO_id(String o_id) {
		this.o_id = o_id;
	}

	public String getOc_name() {
		return oc_name;
	}

	public void setOc_name(String oc_name) {
		this.oc_name = oc_name;
	}

	public String getOc_phone() {
		return oc_phone;
	}

	public void setOc_phone(String oc_phone) {
		this.oc_phone = oc_phone;
	}

	public String getOc_idnum() {
		return oc_idnum;
	}

	public void setOc_idnum(String oc_idnum) {
		this.oc_idnum = oc_idnum;
	}

	public String getOc_sex() {
		return oc_sex;
	}

	public void setOc_sex(String oc_sex) {
		this.oc_sex = oc_sex;
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

	public String getR_type() {
		return r_type;
	}

	public void setR_type(String r_type) {
		this.r_type = r_type;
	}

	public String getO_people_num() {
		return o_people_num;
	}

	public void setO_people_num(String o_people_num) {
		this.o_people_num = o_people_num;
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

	public List<Bill> getBill() {
		return bill;
	}

	public void setBill(List<Bill> bill) {
		this.bill = bill;
	}

	public BigDecimal getR_price() {
		return r_price;
	}

	public void setR_price(BigDecimal r_price) {
		this.r_price = r_price;
	}

	public BigDecimal getB_price() {
		return b_price;
	}

	public void setB_price(BigDecimal b_price) {
		this.b_price = b_price;
	}

	public BigDecimal getTotal_price() {
		return total_price;
	}

	public void setTotal_price(BigDecimal total_price) {
		this.total_price = total_price;
	}

}
