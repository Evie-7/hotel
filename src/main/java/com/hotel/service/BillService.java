package com.hotel.service;

import java.util.List;

import com.hotel.pojo.Bill;
import com.hotel.pojo.Order;

public interface BillService {
//	查询所有账单
	List<Order> queryBill();

//	添加账单
	int addBill(Bill bill);

//	查看详情
	List<Bill> queryBillByOid(int o_id);

//	根据房间号查询
	List<Order> queryBillByRnum(int r_num);
}
