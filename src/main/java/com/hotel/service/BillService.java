package com.hotel.service;

import java.util.List;

import com.hotel.pojo.Order;

public interface BillService {
//	查询所有账单
	List<Order> queryBill();

//	添加账单
	void addBill();
}
