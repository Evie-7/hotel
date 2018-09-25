package com.hotel.mapper;

import java.util.List;

import com.hotel.pojo.Order;

public interface BillMapper {
//	查询所有账单
	public List<Order> queryBill();

//	添加账单
	public void addBill();
	
//	查看详情
	

}
