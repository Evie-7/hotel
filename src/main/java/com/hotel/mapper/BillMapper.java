package com.hotel.mapper;

import java.util.List;

import com.hotel.pojo.Bill;
import com.hotel.pojo.Order;

public interface BillMapper {
//	查询所有账单
	public List<Order> queryBill();

//	添加账单
	public int addBill(Bill bill);

//	查看详情
	public List<Bill> queryBillByOid(int o_id);

//	根据房间号查询
	public List<Order> queryBillByRnum(int r_num);
}
